import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AppSettings {
  static const double hundred = 100.0;
  static const MainAxisAlignment spaceAround = MainAxisAlignment.spaceAround;
  static const MainAxisAlignment mainAxisAlignmentCenter =
      MainAxisAlignment.center;
  static const CrossAxisAlignment crossAxisAlignmentCenter =
      CrossAxisAlignment.center;
  static final bool platformIos = Platform.isIOS;
  static const Color white10 = Colors.white10;
  static const Alignment alignmentCenter = Alignment.center;
  static bool isCertificateSoundCalled = false;
  static final player = AudioPlayer();
  static const TextAlign center = TextAlign.center;

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
      TextStyle(
          fontSize: 21, fontFamily: 'Marhey', fontWeight: FontWeight.w100),
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
  static const double heightImagePosition = 50;
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
    await makeSound('sounds/click-button.mp3');
  }

  static Future<void> soundPhonics(String path) async {
    try {
      // for (var paths in path) {
      //   if (paths.isNotEmpty) {
      //     await player.play(AssetSource(paths));
      //   }
      // }
      return await AppSettings.player.play(AssetSource(path));
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  static Future<void> makeSound(String path) async {
    try {
      return await AppSettings.player.play(AssetSource(path));
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  static Padding putPadding(double padding, Widget child) {
    return Padding(padding: AppSettings.edgeInsetsAll(padding), child: child);
  }
}
