import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/quiz_screen.dart';
import '../provider/modod_provider.dart';

class MododScreen extends StatelessWidget {
  static String route = '/modod-screen';

  const MododScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<MododProvider>(context));
  }
}
