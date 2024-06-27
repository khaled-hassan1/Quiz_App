import 'package:flutter/material.dart';

import '../provider/base_provider.dart';
import './app_settings.dart';

@immutable
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