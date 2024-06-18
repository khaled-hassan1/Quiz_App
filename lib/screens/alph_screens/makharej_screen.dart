import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/makharej_provider.dart';
import '../quiz_screen.dart';

class MakharejScreen extends StatelessWidget {
  static String route = '/makharej-screen';

  const MakharejScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<MakharejProvider>(context));
  }
}
