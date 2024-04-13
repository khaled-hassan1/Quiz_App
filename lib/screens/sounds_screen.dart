import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/provider/sounds_provider.dart';

import '../screens/quiz_screen.dart';

class SoundsScreen extends StatelessWidget {
  static String route = '/sounds-screen';

  const SoundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<SoundsProvider>(context));
  }
}
