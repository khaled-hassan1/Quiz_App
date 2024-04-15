import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

import '../model/questions_list.dart';
import '../provider/base_provider.dart';
import '../widgets/app_settings.dart';

class RowCorrectAndInCorrect extends StatelessWidget {
  const RowCorrectAndInCorrect({
    super.key,
    required this.provider,
  });

  final QuizProvider provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 60),
      child: Row(
        mainAxisAlignment: AppSettings.spaceAround,
        children: [
          scoreDisplay(
            title: 'صحيح',
            provider: provider.questions == qMixAll
                ? provider.allScoreCorrect
                : provider.scoreCorrect,
            color: provider.questions == qMixAll
                ? getScoreCorrectColorAll(provider.allScoreCorrect)
                : getScoreCorrectColor(provider.scoreCorrect),
          ),
          scoreDisplay(
            title: 'خطأ',
            provider: provider.questions == qMixAll
                ? provider.allScoreInCorrect
                : provider.scoreIncorrect,
            color: provider.questions == qMixAll
                ? getIncorrectScoreColorAll(provider.allScoreInCorrect)
                : getIncorrectScoreColor(provider.scoreIncorrect),
          ),
        ],
      ),
    );
  }

  Container scoreDisplay({
    String? title,
    dynamic provider,
    Color? color,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppSettings.borderRadiusCircle(20),
        color: AppSettings.white10,
      ),
      height: AppSettings.hundred,
      width: 120,
      alignment: AppSettings.alignmentCenter,
      child: Column(
          mainAxisAlignment: AppSettings.mainAxisAlignmentCenter,
          children: [
            Text(
              ':$title\n',
              style: const TextStyle(color: AppSettings.white),
            ),
            AnimatedFlipCounter(
              value: provider,
              duration: const Duration(milliseconds: 400),
              curve: title == 'صحيح' ? Curves.fastOutSlowIn : Curves.bounceOut,
              textStyle: TextStyle(
                  fontWeight: AppSettings.w900, fontSize: 20, color: color),
            ),
          ]),
    );
  }
}

Color getScoreCorrectColor(int score) {
  if (score >= 7) {
    return AppSettings.green;
  } else if (score >= 5) {
    return AppSettings.orange;
  } else {
    return AppSettings.white;
  }
}

Color getIncorrectScoreColor(int score) {
  if (score >= 7) {
    return AppSettings.red;
  } else if (score >= 5) {
    return AppSettings.orange;
  } else {
    return AppSettings.white;
  }
}

Color getScoreCorrectColorAll(int score) {
  if (score >= 50) {
    return AppSettings.green;
  } else if (score >= 40) {
    return AppSettings.orange;
  } else {
    return AppSettings.white;
  }
}

Color getIncorrectScoreColorAll(int score) {
  if (score >= 50) {
    return AppSettings.red;
  } else if (score >= 40) {
    return AppSettings.orange;
  } else {
    return AppSettings.white;
  }
}
