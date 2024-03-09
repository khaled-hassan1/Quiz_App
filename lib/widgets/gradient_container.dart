import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/app_settings.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: !AppSettings.platform
            ? const LinearGradient(colors: [
                Colors.white10,
                Color.fromARGB(255, 1, 11, 29),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)
            : const LinearGradient(
                colors: [Color.fromARGB(255, 88, 85, 85), Color.fromARGB(255, 15, 17, 20)]),
      ),
      child: child,
    );
  }
}
