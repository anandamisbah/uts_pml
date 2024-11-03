import 'package:flutter/material.dart';
import 'package:myapp/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  String? _userId;

  String? get userId => _userId;

  Future<void> login(String email, String password) async {
    _userId = await _authService.login(email, password);
    notifyListeners();
  }

  Future<void> register(String email, String password) async {
    _userId = await _authService.register(email, password);
    notifyListeners();
  }

  void logout() {
    _userId = null;
    notifyListeners();
  }
}
