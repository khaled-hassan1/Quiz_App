import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/methlan_provider.dart';
import '../quiz_screen.dart';

class MehtlanScreen extends StatelessWidget {
  static String route = '/methlan-screen';

  const MehtlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<MethlanProvider>(context));
  }
}