import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/tajweed_provider.dart';
import '../screens/quiz_screen.dart';

class TajweedScreen extends StatelessWidget {
  static String route = '/tajweed-screen';

  const TajweedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<TajweedProvider>(context));
  }
}