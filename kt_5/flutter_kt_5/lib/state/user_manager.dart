import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserManager with ChangeNotifier {
  String? _username;
  String? _userEmail;

  String? get username => _username;
  String? get userEmail => _userEmail;
  bool get isLoggedIn => _username != null && _userEmail != null;

  UserManager() {
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _username = prefs.getString('username');
    _userEmail = prefs.getString('userEmail');
    notifyListeners();
  }

  Future<void> signIn(String username, String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('userEmail', email);
    _username = username;
    _userEmail = email;
    notifyListeners();
  }

  Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    _username = null;
    _userEmail = null;
    notifyListeners();
  }
}
