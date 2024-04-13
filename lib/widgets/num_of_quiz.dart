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
    final currentQuestion = provider.questions[provider.currentQuestionIndex];
    final isQmakharej = provider.questions == qmakharej;
    final isQsifat = provider.questions == qsifat;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if ((isQmakharej) &&
            (currentQuestion.imagePath != '') &&
            (currentQuestion.soundPath == ''))
          ImageWidget(provider: provider),
        if ((isQmakharej) &&
            (currentQuestion.soundPath != '') &&
            (currentQuestion.imagePath == ''))
          const HearingWidget(),
        if ((isQsifat) &&
            (currentQuestion.imagePath != '') &&
            (currentQuestion.soundPath == ''))
          const HearingWidget(),
        if ((isQsifat) &&
            (currentQuestion.soundPath != '') &&
            (currentQuestion.imagePath == ''))
          ImageWidget(provider: provider),
        Container(
          decoration: BoxDecoration(
            borderRadius: AppSettings.borderRadiusCircle(20),
            color: Colors.white10,
          ),
          height: 100,
          width: 140,
          alignment: Alignment.center,
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
        ),
      ],
    );
  }
}

class HearingWidget extends StatelessWidget {
  const HearingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: const EdgeInsets.all(15),
        style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.blue.shade200),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: const MaterialStatePropertyAll(Colors.white)),
        onPressed: () => AppSettings.click(),
        icon: const Icon(
          Icons.hearing,
          color: Colors.blue,
          size: 50,
        ));
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
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
          height: 200,
          width: 200,
          child:
              Image.asset(qmakharej[provider.currentQuestionIndex].imagePath,)),
    );
  }
}
