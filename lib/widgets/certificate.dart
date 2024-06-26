import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../model/questions_list.dart';
import '../provider/check_teacher_provider.dart';
import '../widgets/app_settings.dart';
import '../provider/base_provider.dart';
import '../provider/names_provider.dart';

@immutable
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
    final nameProvider = Provider.of<NamesProvider>(context);
    final theme = Theme.of(context).textTheme;
    final largeStyle = theme.titleLarge;
    final mediumStyle = theme.titleMedium!.copyWith(color: Colors.red);
    final isTeacherPressed =
        Provider.of<CheckSettingsProvider>(context, listen: false).isTeacher;

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
                                .copyWith(shadows: [
                              const Shadow(
                                blurRadius: 10,
                                color: AppSettings.green,
                                // offset: Offset(0, 0)
                              ),
                            ], color: Colors.black, fontFamily: 'Changa')),
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
                    provider.questions == qMixAll
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
          buildSignatureName(nameProvider),
          buildDateTime(provider),
          buildSignatureImage(nameProvider, isTeacherPressed),
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

Widget buildSignatureName(NamesProvider namesProvider) {
  return Positioned(
      bottom: 20,
      left: 10,
      child: padding(
        Text(
          namesProvider.teacherName != null
              ? 'أ/${namesProvider.teacherName}'
              : namesProvider.defaultTeacher,
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

Widget buildSignatureImage(NamesProvider provider, bool isTeacherPressed) {
  final isMohamedAbuSamra = provider.teacherName == 'محمد أبو سمرة';
  final isMe = provider.teacherName == 'خالد حسن غالي';
  debugPrint('Is Mohamed Abu Samra: $isMohamedAbuSamra');
  debugPrint('Is Me: $isMe');
  debugPrint('Is Teacher: $isTeacherPressed');
  // Determine which image to show based on the current state
  ImageProvider<Object>? imageProvider;
  if (isTeacherPressed) {
    imageProvider = FileImage(provider.a);
  } else if (isMohamedAbuSamra) {
    imageProvider = provider.assetImageTeacher;
  } else if (isMe) {
    imageProvider = provider.assetImageMe;
  } else {
    // isTeacherPressed = true;
    // imageProvider = FileImage(provider.a);
    imageProvider = const AssetImage('assets/image/question-mark.jpeg');
  }

  return Positioned(
    bottom: 14,
    left: isMohamedAbuSamra ? 140 : 140,
    child: Transform.rotate(
      angle: pi / 20,
      child: SizedBox(
        width: 90,
        height: 45,
        child: ClipRect(
          child: FadeInImage(
            fit: isTeacherPressed ? BoxFit.cover : BoxFit.scaleDown,
            placeholder: imageProvider,
            image: imageProvider,
          ),
        ),
      ),
    ),
  );
}

Padding padding(Widget child) {
  return Padding(padding: AppSettings.edgeInsetsAll(2.0), child: child);
}
