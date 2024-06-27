import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_settings.dart';
import '../provider/base_provider.dart';

@immutable
class QuestionText extends StatelessWidget {
  final QuizProvider provider;

  const QuestionText({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    final currentQuestion = provider.questions[provider.currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        right: 10,
        top: 30,
        left: 10,
      ),
      child: Text(
        '${(provider.currentQuestionIndex + 1).toString()}:  ${currentQuestion.question}',
        textDirection: AppSettings.rtl,
        style: !AppSettings.platformIos
            ? Theme.of(context).textTheme.titleMedium!.copyWith(fontFamily: '')
            : CupertinoTheme.of(context)
                .textTheme
                .navLargeTitleTextStyle
                .copyWith(fontFamily: '', fontSize: 23),
      ),
    );
  }
}
