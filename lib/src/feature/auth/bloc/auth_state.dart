part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialState;

  const factory AuthState.waitForGetOtp() = _WaitForGetOtpState;

  const factory AuthState.authError({
    required final String error,
  }) = _AuthErrorState;

  const factory AuthState.authSuccess() = _CodeSendState;
}
