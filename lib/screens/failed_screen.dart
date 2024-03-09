import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../model/ads_initial.dart';
import '../widgets/app_settings.dart';
import '../widgets/banner_ads.dart';

class FailedScreen extends StatelessWidget {
  static String route = '/failed-screen';
  final dynamic provider;

  const FailedScreen({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    AppSettings.futureDelay(
      () => Ads().loadAd(),
      () => failedSound(),
      () => Ads().loadAd2(),
      () => null,
    );

    return Stack(children: [
      Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/question-mark.jpeg'),
              opacity: 0.1,
              filterQuality: FilterQuality.none,
              fit: BoxFit.fitHeight),
          color: Color.fromARGB(255, 32, 30, 30),
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 183, 178, 178))),
              onPressed: null,
              child: Text('جرب مرة أخري'),
            ),
            AppSettings.sizedBox(15),
            TextButton(
              onPressed: provider.restartQuiz,
              style: ButtonStyle(
                  textStyle: const MaterialStatePropertyAll(
                    TextStyle(fontFamily: 'Marhey', fontSize: 20),
                  ),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(13))),
              child: const Text(
                'إعادة الأسئلة',
              ),
            ),
          ],
        ),
      ),
      const BannerAds(),
    ]);
  }
}

Future<void> failedSound() async {
  try {
    await AppSettings.player.play(AssetSource('sounds/Failed.mp3'));
  } catch (e) {
    debugPrint('Error: $e');
  }
}