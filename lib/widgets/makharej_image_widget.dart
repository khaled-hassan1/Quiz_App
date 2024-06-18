import 'package:flutter/material.dart';

import '../model/questions_list.dart';
import '../provider/base_provider.dart';
import './app_settings.dart';

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
        width: 100,
        child: Image.asset(
          qMakharej[provider.currentQuestionIndex].imagePath,
        ),
      ),
    );
  }
}
