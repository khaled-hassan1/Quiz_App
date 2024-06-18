import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/tafkhem_provider.dart';
import '../quiz_screen.dart';

class TafkhemScreen extends StatelessWidget {
  static String route = '/tafkhem-screen';

  const TafkhemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<TafkhemProvider>(context));
  }
}
