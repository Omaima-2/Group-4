import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  String _timerText = '05:00';
  String get timerText => _timerText;
  set timerText(String value) {
    _timerText = value;
  }
}
