part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started(
    BuildContext context,
  ) = _StartedEvent;

  const factory AuthEvent.sendCode(
    String phone,
  ) = _PhoneSendEvent;

  const factory AuthEvent.verifyCode(
    String smsCode,
  ) = _SmsCodeEvent;

  const factory AuthEvent.authError(
    String error,
  ) = _AuthErrorEvent;

  const factory AuthEvent.authSuccess(
    AuthCredential credential,
  ) = _AuthSuccessEvent;
}
