import 'package:flutter/material.dart';
import 'member.dart';

class MemberProvider extends ChangeNotifier {
  String? _accessToken;
  String? _refreshToken;
  Member? _member;

  String? get accessToken => _accessToken;
  Member? get member => _member;
  bool get isAuthenticated => _accessToken != null;

  void setAuthTokens(String accessToken, String refreshToken) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    notifyListeners();
  }

  void setUser(Member member) {
    _member = member;
    notifyListeners();
  }

  void clearAuth() {
    _accessToken = null;
    _refreshToken = null;
    _member = null;
    notifyListeners();
  }
}