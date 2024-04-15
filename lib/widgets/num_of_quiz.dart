import 'package:flutter/material.dart';

import '../model/questions_list.dart';
import '../provider/base_provider.dart';
import '../widgets/app_settings.dart';

class RowNumOfQuestion extends StatelessWidget {
  const RowNumOfQuestion({
    super.key,
    required this.provider,
  });

  final QuizProvider provider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MoveContainerOfNum(provider: provider),
      ],
    );
  }
}

class MoveContainerOfNum extends StatelessWidget {
  const MoveContainerOfNum({
    super.key,
    required this.provider,
  });

  final QuizProvider provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppSettings.borderRadiusCircle(20),
        color: AppSettings.white10,
      ),
      height: AppSettings.hundred,
      width: 140,
      alignment: AppSettings.alignmentCenter,
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: ':عدد الأسئلة\n'),
            TextSpan(
              text: provider.questions.length.toString(),
              style: const TextStyle(
                  fontWeight: AppSettings.w900,
                  fontSize: 18,
                  color: AppSettings.white),
            ),
          ],
        ),
        textAlign: AppSettings.center,
        style: const TextStyle(color: AppSettings.white),
      ),
    );
  }
}

class HearingWidget extends StatelessWidget {
  final QuizProvider provider;
  final List<String> soundPaths;

  const HearingWidget({
    Key? key,
    required this.provider,
    required this.soundPaths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        soundPaths.length,
        (index) => AppSettings.putPadding(
          8.0,
          IconButton(
            tooltip: (index + 1).toString(),
            padding: AppSettings.edgeInsetsAll(15.0),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.blue.shade200),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: AppSettings.borderRadiusCircle(15),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(AppSettings.white),
            ),
            onPressed: () {
              AppSettings.soundPhonics(soundPaths[index]);
              if (soundPaths.length >= 2) {
                snackBaar(context, index);
              }
            },
            icon: const Icon(
              Icons.hearing,
              color: AppSettings.blue,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }

  void snackBaar(BuildContext context, int index) {
    ScaffoldMessengerState scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();
    scaffoldMessenger.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(
          (index + 1).toString(),
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: AppSettings.center,
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.provider,
  });

  final QuizProvider provider;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppSettings.borderRadiusCircle(40),
      child: SizedBox(
          height: 150,
          width: 200,
          child: Image.asset(
            qMakharej[provider.currentQuestionIndex].imagePath,
          )),
    );
  }
}
