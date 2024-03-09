import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AppSettings {
  static final bool platform = Platform.isIOS;
  static bool isCertificateSoundCalled = false;
  static final player = AudioPlayer();
  static const TextAlign center = TextAlign.center;
  static const String easy = 'المستوى السهل';
  static const String medium = 'المستوى المتوسط';
  static const String difficult = 'المستوى الصعب';
  static const TextDirection rtl = TextDirection.rtl;
  static const Color orange = Colors.orange;
  static const Color green = Color.fromARGB(255, 2, 247, 10);
  static const sizesBoxOptionsScreen = SizedBox(height: 10);
  static const sizesBoxOptionsScreen2 = SizedBox(height: 79);
  static const FontWeight bold = FontWeight.bold;
  static const FontWeight w900 = FontWeight.w900;
  static final buttonStyle = ButtonStyle(
    padding: MaterialStatePropertyAll(
      edgeInsetsAll(6),
    ),
    textStyle: const MaterialStatePropertyAll(
      TextStyle(fontSize: 25, fontFamily: 'Marhey'),
    ),
  );

  static const sizedBoxQuizScreen = SizedBox();
  static const textStyleRowNumOfQuestion = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 16,
  );
  static const textStyleRowNumOfQuestionColor = TextStyle(
    color: Colors.white,
  );
  static double heightImagePosition = 50;
  static const Color red = Colors.red;
  static const Color white = Colors.white;
  static final buttonStyleCertificate =
      ButtonStyle(padding: MaterialStatePropertyAll(edgeInsetsAll(13)));

  static ButtonStyle buttonStyleCertificateScreen = ButtonStyle(
      textStyle: const MaterialStatePropertyAll(
        TextStyle(
          fontFamily: 'Marhey',
          fontSize: 20,
        ),
      ),
      padding: MaterialStateProperty.all(edgeInsetsAll(13)));
  static const Color main = Color.fromARGB(255, 1, 11, 29);
  static const Color blue = Colors.blueAccent;

  static SizedBox sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  static BorderRadius borderRadiusCircle(double radius) =>
      BorderRadius.circular(radius);

  static EdgeInsets edgeInsetsAll(double value) => EdgeInsets.all(value);

  static void futureDelay(
      Function() task1, Function() task2, Function() task3, Function() task4) {
    Future.delayed(Duration.zero, () {
      task1();
      task2();
      task3();
      task4();
    });
  }

  static Future<void> click() async {
    try {
      await AppSettings.player.play(AssetSource('sounds/click-button.mp3'));
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
