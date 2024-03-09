import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_settings.dart';

class AnswerOption extends StatelessWidget {
  final String option;
  final VoidCallback onTap;

  const AnswerOption({
    super.key,
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSettings.edgeInsetsAll(6.0),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: !AppSettings.platform
          ? TextButton(
              onPressed: onTap,
              child: Text(
                option,
                textAlign: AppSettings.center,
              ),
            )
          : CupertinoButton(
              padding: AppSettings.edgeInsetsAll(6.0),
              onPressed: onTap,
              color: CupertinoColors.lightBackgroundGray,
              child: Text(
                option,
                textAlign: AppSettings.center,
                style:
                    TextStyle(fontSize: 25, color: Colors.blueAccent.shade700),
              ),
            ),
    );
  }
}
