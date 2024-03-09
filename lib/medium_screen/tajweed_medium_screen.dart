import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_medium/tajweed_medium_provider.dart';
import '../screens/quiz_screen.dart';

class TajweedMediumScreen extends StatelessWidget {
  static String route = '/tajweed-medium-screen';

  const TajweedMediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<TajweedMediumProvider>(context));
  }
}