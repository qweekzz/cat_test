import 'package:firebase_auth/firebase_auth.dart';

String _verificationCode = '';

class FirebaseAuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: _verificationComplete,
        verificationFailed: _verificationFailed,
        codeSent: _smsCodeSent,
        codeAutoRetrievalTimeout: _codeAutoRetrievalTimeout);
  }

  void _verificationComplete(AuthCredential authCredential) {}

  void _smsCodeSent(String verificationCode, int? code) {
    _verificationCode = verificationCode;
  }

  String? _verificationFailed(FirebaseAuthException error) => error.message;

  void _codeAutoRetrievalTimeout(String verificationCode) {}

  Future<UserCredential> signInWithSmsCode(String smsCode) async {
    // print('code: $smsCode');
    // print('verificationCode: $_verificationCode');

    final credential = PhoneAuthProvider.credential(
      verificationId: _verificationCode,
      smsCode: smsCode,
    );

    final userCredential = await _auth.signInWithCredential(credential);
    return userCredential;
  }

  Future<void> signOut() async => _auth.signOut();
}
