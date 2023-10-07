import 'package:bloc/bloc.dart';
import 'package:car_test/src/feature/auth/data/auth_preferences.dart';
import 'package:car_test/src/feature/auth/data/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => event.mapOrNull(
        started: (event) async => _start(event, emit),
        sendCode: (event) async => _sendCode(event, emit),
        verifyCode: (event) async => _verifyPhoneNumber(event, emit),
      ),
    );
  }

  Future<void> _start(_StartedEvent event, Emitter<AuthState> emit) async {
    final isAuthenticated = await getAuthState();
    // print(isAuthenticated);

    if (isAuthenticated) {
      emit(const AuthState.authSuccess());
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _sendCode(_PhoneSendEvent event, Emitter<AuthState> emit) async {
    try {
      await FirebaseAuthRepo().verifyPhoneNumber(event.phone);
      emit(const AuthState.waitForGetOtp());
    } catch (e) {
      if (e is FirebaseAuthException) {
        print('Ошибка аутентификации Firebase: ${e.code}');
      } else if (e is FirebaseException) {
        print('Ошибка Firebase: ${e.message}');
      } else {
        print('Необработанная ошибка: $e');
      }
    }
  }

  Future<void> _verifyPhoneNumber(
      _SmsCodeEvent event, Emitter<AuthState> emit) async {
    try {
      final auth = await FirebaseAuthRepo().signInWithSmsCode(event.smsCode);
      if (auth.user != null) {
        emit(const AuthState.authSuccess());
        await saveAuthState(true);
      }
    } catch (e) {
      emit(AuthState.authError(error: 'error: $e'));
    }
  }
}
