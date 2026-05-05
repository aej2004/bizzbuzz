import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
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

  int _selectedCommentId = 0;
  int get selectedCommentId => _selectedCommentId;
  set selectedCommentId(int value) {
    _selectedCommentId = value;
  }

  bool _selectedCart = false;
  bool get selectedCart => _selectedCart;
  set selectedCart(bool value) {
    _selectedCart = value;
  }
}
