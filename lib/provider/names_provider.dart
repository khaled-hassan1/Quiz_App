import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NamesProvider with ChangeNotifier {
  String? _userName;
  String? _teacherName;

  String? get teacherName => _teacherName;
  final String _defaultTeacher = '';

  String _textMakharej = '🎉    مخارج الحروف';
  String _textSifat = '🎉    صفات الحروف';
  String _textSounds = '🎉     الصوتيات';
  String _textMabade = '🎉       مبادئ علم التجويد';
  String _textNoon = '🎉       النون الساكنة والتنوين';
  String _textMeem = '🎉      الميم الساكنة';
  String _textMedod = '🎉        المدود';
  String _textLam = '🎉      اللامات';
  String _textMethlen = '🎉       المتماثلان والمتقاربان والمتباعدان';
  String _textTarqeq = '🎉        الترقيق والتفخيم';
  String _textTest = '🎉        اختبار على كل الأبواب';

  AssetImage assetImageTeacher = const AssetImage('assets/image/teacher.png');
  AssetImage assetImageMe = const AssetImage('assets/image/me.png');

  File a = File('');
//////////////////////////////////////////////////////////
  String get textMabade => _textMabade;

  String get textNoon => _textNoon;

  String get textMeem => _textMeem;

  String get textMedod => _textMedod;

  String get textLam => _textLam;

  String get textMethlen => _textMethlen;

  String get textTarqeq => _textTarqeq;

  String get textTest => _textTest;

  ///////////////////////////////////////////////////////

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

  Future<void> loadNameFromSharedPrefsMabade() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameMabade');
    if (savedName != null) {
      _textMabade = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsMabade() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameMabade', _textMabade);
  }

  void updateNameMadabe() {
    _textMabade = 'مبادئ علم التجويد';
    saveNameToSharedPrefsMabade();
    notifyListeners();
  }

  Future<void> loadNameFromSharedPrefsNoon() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameNoon');
    if (savedName != null) {
      _textNoon = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsNoon() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameNoon', _textNoon);
  }

  void updateNameNoon() {
    _textNoon = 'النون الساكنة والتنوين';
    saveNameToSharedPrefsMakharej();
    notifyListeners();
  }
  Future<void> loadNameFromSharedPrefsMeem() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameMeem');
    if (savedName != null) {
      _textMeem = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsMeem() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameMeem', _textMeem);
  }

  void updateNameMeem() {
    _textMeem = 'الميم الساكنة';
    saveNameToSharedPrefsMeem();
    notifyListeners();
  }
  Future<void> loadNameFromSharedPrefsMedod() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameMedod');
    if (savedName != null) {
      _textMedod = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsMedod() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameMedod', _textMedod);
  }

  void updateNameMedod() {
    _textMedod = 'المدود';
    saveNameToSharedPrefsMedod();
    notifyListeners();
  }
  Future<void> loadNameFromSharedPrefsLam() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameLam');
    if (savedName != null) {
      _textLam = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsLam() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameLam', _textLam);
  }

  void updateNameLam() {
    _textLam = 'اللامات';
    saveNameToSharedPrefsLam();
    notifyListeners();
  }
  Future<void> loadNameFromSharedPrefsMethlen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameMethlen');
    if (savedName != null) {
      _textMethlen = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsMethlen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameMethlen', _textMethlen);
  }

  void updateNameMethlen() {
    _textMethlen = 'المتماثلان والمتقاربان والمتباعدان';
    saveNameToSharedPrefsMethlen();
    notifyListeners();
  }
  Future<void> loadNameFromSharedPrefsTarqeq() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameTarqeq');
    if (savedName != null) {
      _textTarqeq = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsTarqeq() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameTarqeq', _textTarqeq);
  }

  void updateNameTarqeq() {
    _textTarqeq = 'الترقيق والتفخيم';
    saveNameToSharedPrefsTarqeq();
    notifyListeners();
  }
  Future<void> loadNameFromSharedPrefsTest() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('nameTest');
    if (savedName != null) {
      _textTest = savedName;
      notifyListeners();
    }
  }

  Future<void> saveNameToSharedPrefsTest() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameTest', _textTest);
  }

  void updateNameTest() {
    _textTest = 'اختبار على كل الأبواب';
    saveNameToSharedPrefsTest();
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

  // String get teacherName {
  //   debugPrint('Teacher Name: $_teacherName');
  //
  //   bool abuSamra = _teacherName == 'محمد أبو سمرة' ||
  //       _teacherName == 'محمد ابو سمره' ||
  //       _teacherName == 'محمد أبو سمره' ||
  //       _teacherName == 'محمد ابو سمرة';
  //
  //   if (abuSamra) {
  //     return _teacherName!;
  //   } else if ((_teacherName != abuSamra) &&
  //       (_teacherName != _defaultTeacher)) {
  //     return _teacherName!;
  //   } else {
  //     return _defaultTeacher;
  //   }
  // }

  void getName(String? name) {
    _userName = name;
    notifyListeners();
  }

  void getNameTeacher(String? teacher) {
    _teacherName = teacher;
    notifyListeners();
  }


}
