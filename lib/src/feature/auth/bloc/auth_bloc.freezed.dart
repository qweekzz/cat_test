// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(String phone) sendCode,
    required TResult Function(String smsCode) verifyCode,
    required TResult Function(String error) authError,
    required TResult Function(AuthCredential credential) authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(String phone)? sendCode,
    TResult? Function(String smsCode)? verifyCode,
    TResult? Function(String error)? authError,
    TResult? Function(AuthCredential credential)? authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(String phone)? sendCode,
    TResult Function(String smsCode)? verifyCode,
    TResult Function(String error)? authError,
    TResult Function(AuthCredential credential)? authSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_PhoneSendEvent value) sendCode,
    required TResult Function(_SmsCodeEvent value) verifyCode,
    required TResult Function(_AuthErrorEvent value) authError,
    required TResult Function(_AuthSuccessEvent value) authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_PhoneSendEvent value)? sendCode,
    TResult? Function(_SmsCodeEvent value)? verifyCode,
    TResult? Function(_AuthErrorEvent value)? authError,
    TResult? Function(_AuthSuccessEvent value)? authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_PhoneSendEvent value)? sendCode,
    TResult Function(_SmsCodeEvent value)? verifyCode,
    TResult Function(_AuthErrorEvent value)? authError,
    TResult Function(_AuthSuccessEvent value)? authSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedEventImplCopyWith<$Res> {
  factory _$$StartedEventImplCopyWith(
          _$StartedEventImpl value, $Res Function(_$StartedEventImpl) then) =
      __$$StartedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$StartedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedEventImpl>
    implements _$$StartedEventImplCopyWith<$Res> {
  __$$StartedEventImplCopyWithImpl(
      _$StartedEventImpl _value, $Res Function(_$StartedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$StartedEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.started(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedEventImplCopyWith<_$StartedEventImpl> get copyWith =>
      __$$StartedEventImplCopyWithImpl<_$StartedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(String phone) sendCode,
    required TResult Function(String smsCode) verifyCode,
    required TResult Function(String error) authError,
    required TResult Function(AuthCredential credential) authSuccess,
  }) {
    return started(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(String phone)? sendCode,
    TResult? Function(String smsCode)? verifyCode,
    TResult? Function(String error)? authError,
    TResult? Function(AuthCredential credential)? authSuccess,
  }) {
    return started?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(String phone)? sendCode,
    TResult Function(String smsCode)? verifyCode,
    TResult Function(String error)? authError,
    TResult Function(AuthCredential credential)? authSuccess,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_PhoneSendEvent value) sendCode,
    required TResult Function(_SmsCodeEvent value) verifyCode,
    required TResult Function(_AuthErrorEvent value) authError,
    required TResult Function(_AuthSuccessEvent value) authSuccess,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_PhoneSendEvent value)? sendCode,
    TResult? Function(_SmsCodeEvent value)? verifyCode,
    TResult? Function(_AuthErrorEvent value)? authError,
    TResult? Function(_AuthSuccessEvent value)? authSuccess,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_PhoneSendEvent value)? sendCode,
    TResult Function(_SmsCodeEvent value)? verifyCode,
    TResult Function(_AuthErrorEvent value)? authError,
    TResult Function(_AuthSuccessEvent value)? authSuccess,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements AuthEvent {
  const factory _StartedEvent(final BuildContext context) = _$StartedEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$StartedEventImplCopyWith<_$StartedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneSendEventImplCopyWith<$Res> {
  factory _$$PhoneSendEventImplCopyWith(_$PhoneSendEventImpl value,
          $Res Function(_$PhoneSendEventImpl) then) =
      __$$PhoneSendEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneSendEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PhoneSendEventImpl>
    implements _$$PhoneSendEventImplCopyWith<$Res> {
  __$$PhoneSendEventImplCopyWithImpl(
      _$PhoneSendEventImpl _value, $Res Function(_$PhoneSendEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$PhoneSendEventImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneSendEventImpl implements _PhoneSendEvent {
  const _$PhoneSendEventImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.sendCode(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneSendEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneSendEventImplCopyWith<_$PhoneSendEventImpl> get copyWith =>
      __$$PhoneSendEventImplCopyWithImpl<_$PhoneSendEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(String phone) sendCode,
    required TResult Function(String smsCode) verifyCode,
    required TResult Function(String error) authError,
    required TResult Function(AuthCredential credential) authSuccess,
  }) {
    return sendCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(String phone)? sendCode,
    TResult? Function(String smsCode)? verifyCode,
    TResult? Function(String error)? authError,
    TResult? Function(AuthCredential credential)? authSuccess,
  }) {
    return sendCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(String phone)? sendCode,
    TResult Function(String smsCode)? verifyCode,
    TResult Function(String error)? authError,
    TResult Function(AuthCredential credential)? authSuccess,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_PhoneSendEvent value) sendCode,
    required TResult Function(_SmsCodeEvent value) verifyCode,
    required TResult Function(_AuthErrorEvent value) authError,
    required TResult Function(_AuthSuccessEvent value) authSuccess,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_PhoneSendEvent value)? sendCode,
    TResult? Function(_SmsCodeEvent value)? verifyCode,
    TResult? Function(_AuthErrorEvent value)? authError,
    TResult? Function(_AuthSuccessEvent value)? authSuccess,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_PhoneSendEvent value)? sendCode,
    TResult Function(_SmsCodeEvent value)? verifyCode,
    TResult Function(_AuthErrorEvent value)? authError,
    TResult Function(_AuthSuccessEvent value)? authSuccess,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class _PhoneSendEvent implements AuthEvent {
  const factory _PhoneSendEvent(final String phone) = _$PhoneSendEventImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$PhoneSendEventImplCopyWith<_$PhoneSendEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmsCodeEventImplCopyWith<$Res> {
  factory _$$SmsCodeEventImplCopyWith(
          _$SmsCodeEventImpl value, $Res Function(_$SmsCodeEventImpl) then) =
      __$$SmsCodeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String smsCode});
}

/// @nodoc
class __$$SmsCodeEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SmsCodeEventImpl>
    implements _$$SmsCodeEventImplCopyWith<$Res> {
  __$$SmsCodeEventImplCopyWithImpl(
      _$SmsCodeEventImpl _value, $Res Function(_$SmsCodeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
  }) {
    return _then(_$SmsCodeEventImpl(
      null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SmsCodeEventImpl implements _SmsCodeEvent {
  const _$SmsCodeEventImpl(this.smsCode);

  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthEvent.verifyCode(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsCodeEventImpl &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsCodeEventImplCopyWith<_$SmsCodeEventImpl> get copyWith =>
      __$$SmsCodeEventImplCopyWithImpl<_$SmsCodeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(String phone) sendCode,
    required TResult Function(String smsCode) verifyCode,
    required TResult Function(String error) authError,
    required TResult Function(AuthCredential credential) authSuccess,
  }) {
    return verifyCode(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(String phone)? sendCode,
    TResult? Function(String smsCode)? verifyCode,
    TResult? Function(String error)? authError,
    TResult? Function(AuthCredential credential)? authSuccess,
  }) {
    return verifyCode?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(String phone)? sendCode,
    TResult Function(String smsCode)? verifyCode,
    TResult Function(String error)? authError,
    TResult Function(AuthCredential credential)? authSuccess,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_PhoneSendEvent value) sendCode,
    required TResult Function(_SmsCodeEvent value) verifyCode,
    required TResult Function(_AuthErrorEvent value) authError,
    required TResult Function(_AuthSuccessEvent value) authSuccess,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_PhoneSendEvent value)? sendCode,
    TResult? Function(_SmsCodeEvent value)? verifyCode,
    TResult? Function(_AuthErrorEvent value)? authError,
    TResult? Function(_AuthSuccessEvent value)? authSuccess,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_PhoneSendEvent value)? sendCode,
    TResult Function(_SmsCodeEvent value)? verifyCode,
    TResult Function(_AuthErrorEvent value)? authError,
    TResult Function(_AuthSuccessEvent value)? authSuccess,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _SmsCodeEvent implements AuthEvent {
  const factory _SmsCodeEvent(final String smsCode) = _$SmsCodeEventImpl;

  String get smsCode;
  @JsonKey(ignore: true)
  _$$SmsCodeEventImplCopyWith<_$SmsCodeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthErrorEventImplCopyWith<$Res> {
  factory _$$AuthErrorEventImplCopyWith(_$AuthErrorEventImpl value,
          $Res Function(_$AuthErrorEventImpl) then) =
      __$$AuthErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthErrorEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthErrorEventImpl>
    implements _$$AuthErrorEventImplCopyWith<$Res> {
  __$$AuthErrorEventImplCopyWithImpl(
      _$AuthErrorEventImpl _value, $Res Function(_$AuthErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthErrorEventImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorEventImpl implements _AuthErrorEvent {
  const _$AuthErrorEventImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthEvent.authError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorEventImplCopyWith<_$AuthErrorEventImpl> get copyWith =>
      __$$AuthErrorEventImplCopyWithImpl<_$AuthErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(String phone) sendCode,
    required TResult Function(String smsCode) verifyCode,
    required TResult Function(String error) authError,
    required TResult Function(AuthCredential credential) authSuccess,
  }) {
    return authError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(String phone)? sendCode,
    TResult? Function(String smsCode)? verifyCode,
    TResult? Function(String error)? authError,
    TResult? Function(AuthCredential credential)? authSuccess,
  }) {
    return authError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(String phone)? sendCode,
    TResult Function(String smsCode)? verifyCode,
    TResult Function(String error)? authError,
    TResult Function(AuthCredential credential)? authSuccess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_PhoneSendEvent value) sendCode,
    required TResult Function(_SmsCodeEvent value) verifyCode,
    required TResult Function(_AuthErrorEvent value) authError,
    required TResult Function(_AuthSuccessEvent value) authSuccess,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_PhoneSendEvent value)? sendCode,
    TResult? Function(_SmsCodeEvent value)? verifyCode,
    TResult? Function(_AuthErrorEvent value)? authError,
    TResult? Function(_AuthSuccessEvent value)? authSuccess,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_PhoneSendEvent value)? sendCode,
    TResult Function(_SmsCodeEvent value)? verifyCode,
    TResult Function(_AuthErrorEvent value)? authError,
    TResult Function(_AuthSuccessEvent value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorEvent implements AuthEvent {
  const factory _AuthErrorEvent(final String error) = _$AuthErrorEventImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthErrorEventImplCopyWith<_$AuthErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSuccessEventImplCopyWith<$Res> {
  factory _$$AuthSuccessEventImplCopyWith(_$AuthSuccessEventImpl value,
          $Res Function(_$AuthSuccessEventImpl) then) =
      __$$AuthSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthCredential credential});
}

/// @nodoc
class __$$AuthSuccessEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSuccessEventImpl>
    implements _$$AuthSuccessEventImplCopyWith<$Res> {
  __$$AuthSuccessEventImplCopyWithImpl(_$AuthSuccessEventImpl _value,
      $Res Function(_$AuthSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$AuthSuccessEventImpl(
      null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as AuthCredential,
    ));
  }
}

/// @nodoc

class _$AuthSuccessEventImpl implements _AuthSuccessEvent {
  const _$AuthSuccessEventImpl(this.credential);

  @override
  final AuthCredential credential;

  @override
  String toString() {
    return 'AuthEvent.authSuccess(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessEventImpl &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessEventImplCopyWith<_$AuthSuccessEventImpl> get copyWith =>
      __$$AuthSuccessEventImplCopyWithImpl<_$AuthSuccessEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
    required TResult Function(String phone) sendCode,
    required TResult Function(String smsCode) verifyCode,
    required TResult Function(String error) authError,
    required TResult Function(AuthCredential credential) authSuccess,
  }) {
    return authSuccess(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
    TResult? Function(String phone)? sendCode,
    TResult? Function(String smsCode)? verifyCode,
    TResult? Function(String error)? authError,
    TResult? Function(AuthCredential credential)? authSuccess,
  }) {
    return authSuccess?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    TResult Function(String phone)? sendCode,
    TResult Function(String smsCode)? verifyCode,
    TResult Function(String error)? authError,
    TResult Function(AuthCredential credential)? authSuccess,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_PhoneSendEvent value) sendCode,
    required TResult Function(_SmsCodeEvent value) verifyCode,
    required TResult Function(_AuthErrorEvent value) authError,
    required TResult Function(_AuthSuccessEvent value) authSuccess,
  }) {
    return authSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_PhoneSendEvent value)? sendCode,
    TResult? Function(_SmsCodeEvent value)? verifyCode,
    TResult? Function(_AuthErrorEvent value)? authError,
    TResult? Function(_AuthSuccessEvent value)? authSuccess,
  }) {
    return authSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_PhoneSendEvent value)? sendCode,
    TResult Function(_SmsCodeEvent value)? verifyCode,
    TResult Function(_AuthErrorEvent value)? authError,
    TResult Function(_AuthSuccessEvent value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccessEvent implements AuthEvent {
  const factory _AuthSuccessEvent(final AuthCredential credential) =
      _$AuthSuccessEventImpl;

  AuthCredential get credential;
  @JsonKey(ignore: true)
  _$$AuthSuccessEventImplCopyWith<_$AuthSuccessEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitForGetOtp,
    required TResult Function(String error) authError,
    required TResult Function() authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitForGetOtp,
    TResult? Function(String error)? authError,
    TResult? Function()? authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitForGetOtp,
    TResult Function(String error)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WaitForGetOtpState value) waitForGetOtp,
    required TResult Function(_AuthErrorState value) authError,
    required TResult Function(_CodeSendState value) authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult? Function(_AuthErrorState value)? authError,
    TResult? Function(_CodeSendState value)? authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult Function(_AuthErrorState value)? authError,
    TResult Function(_CodeSendState value)? authSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitForGetOtp,
    required TResult Function(String error) authError,
    required TResult Function() authSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitForGetOtp,
    TResult? Function(String error)? authError,
    TResult? Function()? authSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitForGetOtp,
    TResult Function(String error)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WaitForGetOtpState value) waitForGetOtp,
    required TResult Function(_AuthErrorState value) authError,
    required TResult Function(_CodeSendState value) authSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult? Function(_AuthErrorState value)? authError,
    TResult? Function(_CodeSendState value)? authSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult Function(_AuthErrorState value)? authError,
    TResult Function(_CodeSendState value)? authSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$WaitForGetOtpStateImplCopyWith<$Res> {
  factory _$$WaitForGetOtpStateImplCopyWith(_$WaitForGetOtpStateImpl value,
          $Res Function(_$WaitForGetOtpStateImpl) then) =
      __$$WaitForGetOtpStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitForGetOtpStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$WaitForGetOtpStateImpl>
    implements _$$WaitForGetOtpStateImplCopyWith<$Res> {
  __$$WaitForGetOtpStateImplCopyWithImpl(_$WaitForGetOtpStateImpl _value,
      $Res Function(_$WaitForGetOtpStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WaitForGetOtpStateImpl implements _WaitForGetOtpState {
  const _$WaitForGetOtpStateImpl();

  @override
  String toString() {
    return 'AuthState.waitForGetOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WaitForGetOtpStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitForGetOtp,
    required TResult Function(String error) authError,
    required TResult Function() authSuccess,
  }) {
    return waitForGetOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitForGetOtp,
    TResult? Function(String error)? authError,
    TResult? Function()? authSuccess,
  }) {
    return waitForGetOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitForGetOtp,
    TResult Function(String error)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (waitForGetOtp != null) {
      return waitForGetOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WaitForGetOtpState value) waitForGetOtp,
    required TResult Function(_AuthErrorState value) authError,
    required TResult Function(_CodeSendState value) authSuccess,
  }) {
    return waitForGetOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult? Function(_AuthErrorState value)? authError,
    TResult? Function(_CodeSendState value)? authSuccess,
  }) {
    return waitForGetOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult Function(_AuthErrorState value)? authError,
    TResult Function(_CodeSendState value)? authSuccess,
    required TResult orElse(),
  }) {
    if (waitForGetOtp != null) {
      return waitForGetOtp(this);
    }
    return orElse();
  }
}

abstract class _WaitForGetOtpState implements AuthState {
  const factory _WaitForGetOtpState() = _$WaitForGetOtpStateImpl;
}

/// @nodoc
abstract class _$$AuthErrorStateImplCopyWith<$Res> {
  factory _$$AuthErrorStateImplCopyWith(_$AuthErrorStateImpl value,
          $Res Function(_$AuthErrorStateImpl) then) =
      __$$AuthErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorStateImpl>
    implements _$$AuthErrorStateImplCopyWith<$Res> {
  __$$AuthErrorStateImplCopyWithImpl(
      _$AuthErrorStateImpl _value, $Res Function(_$AuthErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorStateImpl implements _AuthErrorState {
  const _$AuthErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.authError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorStateImplCopyWith<_$AuthErrorStateImpl> get copyWith =>
      __$$AuthErrorStateImplCopyWithImpl<_$AuthErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitForGetOtp,
    required TResult Function(String error) authError,
    required TResult Function() authSuccess,
  }) {
    return authError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitForGetOtp,
    TResult? Function(String error)? authError,
    TResult? Function()? authSuccess,
  }) {
    return authError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitForGetOtp,
    TResult Function(String error)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WaitForGetOtpState value) waitForGetOtp,
    required TResult Function(_AuthErrorState value) authError,
    required TResult Function(_CodeSendState value) authSuccess,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult? Function(_AuthErrorState value)? authError,
    TResult? Function(_CodeSendState value)? authSuccess,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult Function(_AuthErrorState value)? authError,
    TResult Function(_CodeSendState value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorState implements AuthState {
  const factory _AuthErrorState({required final String error}) =
      _$AuthErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthErrorStateImplCopyWith<_$AuthErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeSendStateImplCopyWith<$Res> {
  factory _$$CodeSendStateImplCopyWith(
          _$CodeSendStateImpl value, $Res Function(_$CodeSendStateImpl) then) =
      __$$CodeSendStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeSendStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CodeSendStateImpl>
    implements _$$CodeSendStateImplCopyWith<$Res> {
  __$$CodeSendStateImplCopyWithImpl(
      _$CodeSendStateImpl _value, $Res Function(_$CodeSendStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CodeSendStateImpl implements _CodeSendState {
  const _$CodeSendStateImpl();

  @override
  String toString() {
    return 'AuthState.authSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeSendStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitForGetOtp,
    required TResult Function(String error) authError,
    required TResult Function() authSuccess,
  }) {
    return authSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitForGetOtp,
    TResult? Function(String error)? authError,
    TResult? Function()? authSuccess,
  }) {
    return authSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitForGetOtp,
    TResult Function(String error)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_WaitForGetOtpState value) waitForGetOtp,
    required TResult Function(_AuthErrorState value) authError,
    required TResult Function(_CodeSendState value) authSuccess,
  }) {
    return authSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult? Function(_AuthErrorState value)? authError,
    TResult? Function(_CodeSendState value)? authSuccess,
  }) {
    return authSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_WaitForGetOtpState value)? waitForGetOtp,
    TResult Function(_AuthErrorState value)? authError,
    TResult Function(_CodeSendState value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(this);
    }
    return orElse();
  }
}

abstract class _CodeSendState implements AuthState {
  const factory _CodeSendState() = _$CodeSendStateImpl;
}
