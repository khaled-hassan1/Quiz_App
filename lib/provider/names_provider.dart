import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NamesProvider with ChangeNotifier {
  String? _userName;
  String? _teacherName;
  final String _defaultTeacher = 'أ.م/خالد حسن غالي';

  String _textMakharej = '🎉    مخارج الحروف';
  String _textSifat = '🎉    صفات الحروف';
  String _textSounds = '🎉     الصوتيات';

  // // AssetImage defaultImage = const AssetImage('assets/image/signature.png');
  String get defaultTeacher => _defaultTeacher;

  String get textMakharej => _textMakharej;

  String get textSifat => _textSifat;
  String get textSounds => _textSounds;

  Future<void> loadNameFromSharedPrefsMakharej() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameM');
    if (savedName != null) {
      _textMakharej = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsMakharej() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameM', _textMakharej);
  }

  void updateNameMakharej() {
    _textMakharej = 'مخارج الحروف';
    saveNameToSharedPrefsMakharej();
    notifyListeners();
  }

  Future<void> loadNameFromSharedPrefsSifat() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameS');
    if (savedName != null) {
      _textSifat = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsS() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameS', _textSifat);
  }

  void updateNameSifat() {
    _textSifat = 'صفات الحروف';
    saveNameToSharedPrefsS();
    notifyListeners();
  }

  Future<void> loadNameFromSharedPrefsSounds() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameSounds');
    if (savedName != null) {
      _textSounds = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsSounds() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameSounds', _textSounds);
  }

  void updateNameSounds() {
    _textSounds = 'الصوتيات';
    saveNameToSharedPrefsSounds();
    notifyListeners();
  }

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
      return _defaultTeacher;
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
