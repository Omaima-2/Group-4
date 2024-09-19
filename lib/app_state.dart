import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _photostate = false;
  bool get photostate => _photostate;
  set photostate(bool value) {
    _photostate = value;
  }

  bool _dropstate = false;
  bool get dropstate => _dropstate;
  set dropstate(bool value) {
    _dropstate = value;
  }

  String _loginAttempt = '';
  String get loginAttempt => _loginAttempt;
  set loginAttempt(String value) {
    _loginAttempt = value;
  }
}
