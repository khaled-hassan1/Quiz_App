import 'package:flutter/material.dart';

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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
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
