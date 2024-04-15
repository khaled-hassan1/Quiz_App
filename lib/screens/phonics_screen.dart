import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/phonics_provider.dart';
import '../screens/quiz_screen.dart';

class PhonicsScreen extends StatelessWidget {
  static String route = '/phonics-screen';

  const PhonicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<PhonicsProvider>(context));
  }
}
