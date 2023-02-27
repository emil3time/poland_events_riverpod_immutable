import 'package:events/auth/domain/auth_failure.dart';
import 'package:events/auth/infrastructure/eventbrite_authenticator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.accessApproval() = _AccessApproval;

  const factory AuthState.accessDenay() = _AccesDeny;

  const factory AuthState.failure(AuthFailure failure) = _Failure;

  const factory AuthState.initial() = _Initial;
}

typedef AuthUriCallback = Future<Uri> Function(Uri authorizationUri);

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  final EventbriteAuthenticator _authenticator;

  Future<void> checkAndUpdateAuthStatus() async {
    state = (await _authenticator.isSignIn())
        ? const AuthState.accessApproval()
        : const AuthState.accessDenay();
  }

  Future<void> signIn(AuthUriCallback authotizationCallback) async {
    final grant = _authenticator.createGrant();
    final responseUri = await authotizationCallback(
      _authenticator.getAuthorizationUrl(grant),
    );

    final failureOrSuccess = await _authenticator.handleAuthorization(
      grant,
      responseUri.queryParameters,
    );

    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.accessApproval(),
    );

    grant.close();
  }

  Future<void> signOut() async {
    final failureOrSignOut = await _authenticator.signOut();

    state = failureOrSignOut.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.accessDenay(),
    );
  }
}
