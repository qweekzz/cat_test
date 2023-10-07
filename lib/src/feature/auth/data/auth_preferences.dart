import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveAuthState(bool isAuthenticated) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isAuthenticated', isAuthenticated);
}

Future<bool> getAuthState() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isAuthenticated') ?? false;
}
