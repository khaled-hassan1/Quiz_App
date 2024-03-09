import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/mix_provider.dart';
import '../screens/quiz_screen.dart';

class MixScreen extends StatelessWidget {
  static String route = '/mix-screen';

  const MixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<MixAllProvider>(context));
  }
}
