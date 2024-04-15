import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/quiz_screen.dart';
import '../provider/noon_provider.dart';

class NoonScreen extends StatelessWidget {
  static String route = '/noon-screen';

  const NoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<NoonProvider>(context));
  }
}
