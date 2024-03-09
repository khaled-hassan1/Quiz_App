import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/meem_provider.dart';
import './quiz_screen.dart';

class MeemScreen extends StatelessWidget {
  static String route = '/meem-screen';

  const MeemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<MeemProvider>(context));
  }
}
