import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/app_settings.dart';

class ButtonMAndS extends StatelessWidget {
  const ButtonMAndS({super.key, required this.fun, required this.child});

  final Function() fun;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: AppSettings.buttonStyle,
      onPressed: fun,
      child: child,
    );
  }
}
