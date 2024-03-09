import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/provider_medium/lam_medium_provider.dart';

import '../screens/quiz_screen.dart';

class LamMediumScreen extends StatelessWidget {
  static String route = '/lam-medium-screen';

  const LamMediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<LamMediumProvider>(context));
  }
}
