import 'package:flutter/material.dart';

class NameProvider with ChangeNotifier {
  String? _userName;
  String? _teacherName;
  String defaultTeacher = 'أ.م/خالد حسن غالي';

  // AssetImage defaultImage = const AssetImage('assets/image/signature.png');

  String get userName {
    if (_userName == null) {
      return 'لا يوجد';
    } else {
      return _userName!;
    }
  }

  String get teacherName {
    debugPrint('Teacher Name: $_teacherName');

    if (_teacherName == 'محمد أبو سمرة' ||
        _teacherName == 'محمد ابو سمره' ||
        _teacherName == 'محمد أبو سمره' ||
        _teacherName == 'محمد ابو سمرة') {
      return _teacherName!;
    } else {
      return defaultTeacher;
    }
  }

  void getName(String? name) {
    _userName = name;
    notifyListeners();
  }

  void getNameTeacher(String? teacher) {
    _teacherName = teacher;
    notifyListeners();
  }
}
