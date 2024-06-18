import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/lam_provider.dart';
import '../quiz_screen.dart';

class LamScreen extends StatelessWidget {
  static String route = '/lam-screen';

  const LamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<LamProvider>(context));
  }
}