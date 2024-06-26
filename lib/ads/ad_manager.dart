import 'package:flutter/material.dart';

@immutable
class AdManager {
  static bool isTest = false;
  static String bannerHome = isTest
      ? 'ca-app-pub-3940256099942544/6300978111' //test
      : 'ca-app-pub-4572535261538266/3705164494'; //real

  static String interstitialAd = isTest
      ? 'ca-app-pub-3940256099942544/1033173712' //test
      : 'ca-app-pub-4572535261538266/2559124854'; //real

  static String interstitialAd2 = isTest
      ? 'ca-app-pub-3940256099942544/4411468910' //test
      : 'ca-app-pub-4572535261538266/8127366440'; //real
}
