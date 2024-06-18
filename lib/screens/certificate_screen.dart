import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:share_plus/share_plus.dart';
import 'package:store_redirect/store_redirect.dart';

import '../provider/base_provider.dart';
import '../ads/ads_initial.dart';
import '../widgets/app_settings.dart';
import '../widgets/banner_ads.dart';
import '../widgets/certificate.dart';
import '../widgets/container_header.dart';
import '../widgets/gradient_container.dart';

class CertificateScreen extends StatelessWidget {
  static String route = '/certificate-screen';

  const CertificateScreen(
      {super.key, required this.provider, required this.namePage});

  final QuizProvider provider;
  final String namePage;

  @override
  Widget build(BuildContext context) {
    ScreenshotController screenshotController = ScreenshotController();
    if (!AppSettings.isCertificateSoundCalled) {
      AppSettings.isCertificateSoundCalled = true;
    }
    AppSettings.futureDelay(
      () => certificateSound(),
      () => Ads().loadAd2(),
      () => Ads().loadAd(),
      () => null,
      // () => null,
      // () => null,
      // () => null,
    );

    return SafeArea(
      child: Scaffold(
        body: GradientContainer(
          child: Stack(children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                ContainerHeader(namePage: namePage, provider: provider),
                Certificate(
                  provider: provider,
                  namePage: namePage,
                  screenshotController: screenshotController,
                ),
                AppSettings.sizedBox(10),
                buildRestartButton(
                    buttonStyle: AppSettings.buttonStyleCertificateScreen),
                AppSettings.sizedBox(10),
                buildShareButton(
                    screenshotController: screenshotController,
                    buttonStyle: AppSettings.buttonStyleCertificateScreen),
                AppSettings.sizedBox(20),
                buildRateButton(),
                AppSettings.sizedBox(20),
              ],
            ),
            const BannerAds(),
          ]),
        ),
      ),
    );
  }

  Widget buildRestartButton({ButtonStyle? buttonStyle}) {
    return TextButton(
      onPressed: provider.restartQuiz,
      style: buttonStyle,
      child: const Text(
        'إعادة الأسئلة',
      ),
    );
  }

  Widget buildRateButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0),
      child: FilledButton(
        onPressed: () {
          StoreRedirect.redirect(
            androidAppId: 'com.coding.quiz_app',
            iOSAppId: '585027354',
          );
          // click();
        },
        style: AppSettings.buttonStyle,
        child: const Text(
          'ما رأيك',
        ),
      ),
    );
  }

  Widget buildShareButton(
      {ScreenshotController? screenshotController, ButtonStyle? buttonStyle}) {
    return TextButton(
      onPressed: () async {
        final image = await screenshotController!.capture(delay: Duration.zero);
        if (image == null) return;
        saveAndShare(image);
      },
      style: buttonStyle,
      child: const Text(
        'مشاركة النتيجة',
      ),
    );
  }

  void saveAndShare(Uint8List bytes) async {
    final directory = await path.getApplicationDocumentsDirectory();
    // final image = File('${directory.path}/flutter.png');
    final image = File('${directory.absolute.path}/screenshot.png');
    image.writeAsBytesSync(bytes);
    // await Share.shareFiles([image.path]);
    await Share.shareXFiles([XFile(image.path)]);
    await image.delete();
  }
}

Future<void> certificateSound() async {
  try {
    await AppSettings.player.play(AssetSource('sounds/Certificate.mp3'));
  } catch (e) {
    debugPrint('Error: $e');
  }
}
