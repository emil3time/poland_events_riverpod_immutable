import 'package:dio/dio.dart';
import 'package:events/auth/application/auth_notifier.dart';
import 'package:events/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:events/auth/infrastructure/eventbrite_authenticator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio());

// final oAuth2InterceptorProvider = Provider(
//   (ref) => OAuth2Interceptor(
//     ref.watch(githubAuthenticatorProvider),
//     ref.watch(authNotifierProvider.notifier),
//     ref.watch(dioForAuthProvider),
//   ),
// );

final credentialsStorageProvider = Provider /* <CredentialsStorage> */ (
  (ref) => SecureCredentialsStorage(ref.watch(flutterSecureStorageProvider)),
);

final pocketAuthenticatorProvider = Provider(
  (ref) => EventbriteAuthenticator(
    ref.watch(credentialsStorageProvider),
    ref.watch(dioForAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(pocketAuthenticatorProvider)),
);
