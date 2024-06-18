import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/sifat_provider.dart';
import '../quiz_screen.dart';

class SifatScreen extends StatelessWidget {
  static String route = '/sifat-screen';

  const SifatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<SifatProvider>(context));
  }
}
