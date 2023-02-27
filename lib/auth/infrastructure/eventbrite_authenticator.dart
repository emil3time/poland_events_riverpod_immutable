import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:events/auth/domain/auth_failure.dart';
import 'package:events/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:oauth2/oauth2.dart';

class EventbriteAuthenticator {
  final SecureCredentialsStorage _credentialsStorage;
  final Dio _dio;

  EventbriteAuthenticator(this._credentialsStorage, this._dio);

  static final clientId = dotenv.get('ClientID', fallback: '');
  static final clientSecret = dotenv.get('ClientSecret', fallback: '');
  static final eventbriteHome = 'https://www.eventbrite.com/';
  static final authorizationEndpoint =
      Uri.parse('https://www.eventbrite.com/oauth/authorize');
  static final redirectUri = Uri.parse('http://localhost:8080/oauth/redirect');

  static final tokenEndpoint = Uri.https(
    'www.eventbrite.com',
    '/oauth/token',
    {
      'grant_type': 'authorization_code',
      'redirect_uri': 'http://localhost:8080/oauth/redirect',
    },
  );

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();

      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          // no error handling for StateError in refresh() method, because above if statement excluded this option.
          // Github token never expires - without this if - refresh() return StateError and app will crash.
          final failureOrNewCredentials = await refresh(storedCredentials);
          return failureOrNewCredentials.fold((l) => null, (r) => r);
        }
      }

      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  AuthorizationCodeGrant createGrant() {
    return AuthorizationCodeGrant(
      clientId,
      authorizationEndpoint,
      tokenEndpoint,
      secret: clientSecret,
    );
  }

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(
      redirectUri,
      // scopes: scopes,
    );
  }

  Future<Either<AuthFailure, Unit>> handleAuthorization(
    AuthorizationCodeGrant grant,
    Map<String, String> queryParams,
  ) async {
    try {
      final Response tokenResponse = await _dio.postUri(
        tokenEndpoint,
        data: {
          'grant_type': 'authorization_code',
          'client_id': clientId,
          'client_secret': clientSecret,
          'code': queryParams['code'],
          'redirect_uri': redirectUri
        },
        options: Options(
          headers: {'content-type': 'application/x-www-form-urlencoded'},
        ),
      );

      // final weekBefore = DateTime.now().subtract(Duration(days: 7));
      // final weekBef = DateTime.now().add(Duration(days: 7));
      // print(DateTime.now().subtract(Duration(days: 30)));
      // print(DateFormat('yyyy-MM-ddTHH:mm:ss').format(weekBefore));

      final credentials = Credentials(tokenResponse.data['access_token']);

      await _credentialsStorage.save(credentials);
// TODO proper error handling
      return right(unit);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error} : ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final accessToken = await _credentialsStorage
          .read()
          .then((credentials) => credentials?.accessToken);

      return await clearCredentialsStorage();
    } on PlatformException {
      return left(
        const AuthFailure.storage(),
      );
    }
  }

  Future<Either<AuthFailure, Unit>> clearCredentialsStorage() async {
    try {
      await _credentialsStorage.delete();
      return right(unit);
    } on FormatException {
      return left(
        const AuthFailure.storage(),
      );
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
    Credentials credentials,
  ) async {
    try {
      final refreshToken = await credentials.refresh(
        identifier: clientId,
        secret: clientSecret,
      );

      await _credentialsStorage.save(refreshToken);

      return right(refreshToken);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error} : ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}

// !never catch (e) in StateError or another Error because this crash app try cath
// !only Exceptions in official Flutter docs - but in some third party packages like Dio
// !catching errors it's not a problem.
