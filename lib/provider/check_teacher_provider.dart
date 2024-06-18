import 'package:flutter/cupertino.dart';

class CheckSettingsProvider extends ChangeNotifier {
  final bool _isTeacher = false;
  bool _isCamera = false;
  bool _isLogin = true;
  bool _isVisible = true;
  
  bool get isLogin => _isLogin;
  bool get isVisible => _isVisible;
  bool get isCamera => _isCamera;
  bool get isTeacher => _isTeacher;

  void isLog() {
    _isLogin = !_isLogin;
    notifyListeners();
  }

  void isVisibleOrNot() {
    _isVisible = !_isVisible;
    notifyListeners();
  }

  void isCameraOrNot() {
    _isCamera = !_isCamera;
    notifyListeners();
  }
}
