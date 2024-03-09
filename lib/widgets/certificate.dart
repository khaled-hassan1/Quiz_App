import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../model/easy_questions.dart';
import '../widgets/app_settings.dart';
import '../provider/base_provider.dart';
import '../provider/name_provider.dart';

class Certificate extends StatelessWidget {
  final QuizProvider provider;
  final String namePage;
  final ScreenshotController screenshotController;

  const Certificate({
    super.key,
    required this.provider,
    required this.namePage,
    required this.screenshotController,
  });

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<NameProvider>(context);
    final theme = Theme.of(context).textTheme;
    final largeStyle = theme.titleLarge;
    final mediumStyle = theme.titleMedium!.copyWith(color: Colors.red);
    final isMohamedAbuSamra = nameProvider.teacherName == 'محمد أبو سمرة' ||
        nameProvider.teacherName == 'محمد ابو سمره' ||
        nameProvider.teacherName == 'محمد أبو سمره' ||
        nameProvider.teacherName == 'محمد ابو سمرة';

    return Screenshot(
      controller: screenshotController,
      child: Stack(
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/image/images.png'),
                    opacity: 0.1,
                    filterQuality: FilterQuality.none,
                    fit: BoxFit.cover),
                color: const Color.fromARGB(255, 241, 238, 238),
                border: Border.all(
                    color: const Color.fromARGB(255, 23, 167, 215), width: 3),
                borderRadius: AppSettings.borderRadiusCircle(22),
              ),
              child: Column(
                children: [
                  AppSettings.sizedBox(20),
                  Text.rich(
                    textAlign: AppSettings.center,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'شهادة تقدير \n',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    color: Colors.black, fontFamily: 'Changa')),
                        TextSpan(
                          text: '\nإلى الطالب/ة: ${nameProvider.userName}',
                          style: mediumStyle.copyWith(
                              color: AppSettings.red,
                              fontSize: 20,
                              fontWeight: AppSettings.bold,
                              fontFamily: 'Marhey'),
                        ),
                      ],
                    ),
                    textDirection: AppSettings.rtl,
                  ),
                  Text('وذلك لاجتيازه/ها الاختبار علي $namePage\n',
                      textAlign: AppSettings.center,
                      style: mediumStyle.copyWith(
                          color: Colors.green.shade700, fontSize: 20)),
                  Text(
                    provider.questions == mixAllEasy
                        ? 'عدد الأسئلة: ${provider.questions.length} \n\nالأجوبة الصحيحة: ${provider.allScoreCorrect.toString()}\n\nالأجوبة الخاطئة: ${provider.allScoreInCorrect.toString()}'
                        : 'عدد الأسئلة: ${provider.questions.length} \n\nالأجوبة الصحيحة: ${provider.scoreCorrect.toString()}\n\nالأجوبة الخاطئة: ${provider.scoreIncorrect.toString()}',
                    style: largeStyle!.copyWith(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: AppSettings.center,
                  ),
                  AppSettings.sizedBox(65),
                ],
              )),
          buildLeftLogo(),
          buildRightLogo(),
          buildSignature(),
          buildSignatureName(isMohamedAbuSamra),
          buildDateTime(provider),
          buildSignatureImage(isMohamedAbuSamra),
        ],
      ),
    );
  }
}

Widget buildLeftLogo() {
  const assetImage = AssetImage('assets/image/d.jpeg');
  return Positioned(
      top: 20,
      left: 10,
      child: padding(ClipRRect(
        borderRadius: AppSettings.borderRadiusCircle(30),
        child: const FadeInImage(
          placeholder: assetImage,
          image: assetImage,
          height: 50,
          width: 70,
        ),
      )));
}

Widget buildRightLogo() {
  const assetImage = AssetImage('assets/image/images.png');
  return Positioned(
      top: 20,
      right: 10,
      child: padding(ClipRRect(
        borderRadius: AppSettings.borderRadiusCircle(30),
        child: const FadeInImage(
          placeholder: assetImage,
          image: assetImage,
          height: 50,
          width: 70,
        ),
      )));
}

Widget buildSignature() {
  return Positioned(
      bottom: 50,
      left: 40,
      child: padding(
        const Text(
          'التوقيع',
          style: TextStyle(color: AppSettings.red),
        ),
      ));
}

Widget buildSignatureName(bool isMohamedAbuSamra) {
  return Positioned(
      bottom: 20,
      left: 10,
      child: padding(
        Text(
          isMohamedAbuSamra ? 'أ/محمد أبو سمرة' : 'أ.م/خالد حسن غالي',
          style: const TextStyle(
              color: AppSettings.red, fontSize: 16, fontFamily: 'Rakkas'),
        ),
      ));
}

Widget buildDateTime(QuizProvider provider) {
  return Positioned(
      bottom: 10,
      right: 10,
      child: padding(
        Text(
          provider.dateTime,
          style: const TextStyle(
              color: Color.fromARGB(255, 6, 84, 208),
              fontSize: 15,
              fontFamily: '',
              fontWeight: FontWeight.w400),
        ),
      ));
}

Widget buildSignatureImage(bool isMohamedAbuSamra) {
  debugPrint('Is Mohamed Abu Samra: $isMohamedAbuSamra');

  const assetImageTeacher = AssetImage('assets/image/teacher.png');
  const assetImageMe = AssetImage('assets/image/me.png');
  return Positioned(
      bottom: 10,
      left: isMohamedAbuSamra ? 130 : 140,
      child: Transform.rotate(
        angle: pi / 20,
        child: padding(
          FadeInImage(
            placeholder: isMohamedAbuSamra ? assetImageTeacher : assetImageMe,
            image: isMohamedAbuSamra ? assetImageTeacher : assetImageMe,
            height: 50,
            width: 90,
          ),
        ),
      ));
}

Padding padding(Widget child) {
  return Padding(padding: AppSettings.edgeInsetsAll(2.0), child: child);
}
