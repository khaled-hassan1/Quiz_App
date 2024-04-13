import 'package:flutter/material.dart';

import '../model/questions_list.dart';
import '../provider/base_provider.dart';
import '../widgets/app_settings.dart';

class ContainerHeader extends StatelessWidget {
  final String namePage;
  final QuizProvider provider;

  const ContainerHeader(
      {super.key, required this.namePage, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Text(
          provider.questions == qMixAll
              ? 'انتهت الأسئلة'
              : '\nانتهت الأسئلة ($namePage)',
          textDirection: AppSettings.rtl,
          textAlign: AppSettings.center,
          style:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),
        ));
  }
}
