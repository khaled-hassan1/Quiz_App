import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart' as path;

import '../widgets/app_settings.dart';
import '../provider/names_provider.dart';
import '../widgets/banner_ads.dart';

class ResultScreen extends StatelessWidget {
  static String route = '/certificate-screen';

  const ResultScreen({
    super.key,
    required this.provider,
    required this.namePage,
  });

  final dynamic provider;
  final String namePage;

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<NamesProvider>(context);
    ScreenshotController screenshotController = ScreenshotController();
    return Screenshot(
      controller: screenshotController,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    height: 150,
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      '\nانتهت الأسئلة ($namePage)',
                      style: Theme.of(context).textTheme.titleMedium,
                    )),
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            sizedBox(20),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(children: [
                                TextSpan(
                                    text: 'شهادة تقدير ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Colors.black,
                                        )),
                                TextSpan(
                                  text:
                                      '\nإلى الطالب/ة: ${nameProvider.userName}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          color: Colors.red, fontSize: 30),
                                ),
                              ]),
                            ),
                            Text('وذلك لاجتيازه/ها الاختبار علي $namePage\n',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Colors.green.shade700,
                                        fontSize: 20)),
                            Text(
                              'عدد الأسئلة: ${provider.questions.length} \n\nالأجوبة الصحيحة: ${provider.scoreCorrect.toString()}\n\nالأجوبة الخاطئة: ${provider.scoreIncorrect.toString()}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            sizedBox(60),
                          ],
                        )),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Image.asset('assets/image/images.png',
                          height: AppSettings.heightImagePosition),
                    ),
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Image.asset('assets/image/d.jpeg',
                          height: AppSettings.heightImagePosition),
                    ),
                    const Positioned(
                      bottom: 50,
                      left: 40,
                      child: Text(
                        'التوقيع',
                        style: TextStyle(color: AppSettings.red),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      left: 10,
                      child: Text(
                        'ّأ.م/خالد حسن غالي',
                        style: TextStyle(color: AppSettings.red, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                sizedBox(90),
                TextButton(
                  onPressed: provider.restartQuiz,
                  style: AppSettings.buttonStyleCertificate,
                  child: const Text('إعادة الأسئلة'),
                ),
                sizedBox(19),
                TextButton(
                  onPressed: () async {
                    final image = await screenshotController.capture(
                        delay: Duration.zero);
                    if (image == null) return;
                    saveAndShare(image);
                  },
                  style: AppSettings.buttonStyleCertificate,
                  child: const Text('مشاركة النتيجة'),
                ),
                const BannerAds(),
              ],
            ),
          ),
        ),
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

SizedBox sizedBox(double height) {
  return SizedBox(
    height: height,
  );
}
