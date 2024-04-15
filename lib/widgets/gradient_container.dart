import 'package:flutter/material.dart';
import '../widgets/app_settings.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AppSettings.alignmentCenter,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        // color: Color.fromRGBO(149, 136, 235, 1),
        gradient: !AppSettings.platformIos
            ? const LinearGradient(colors: [
                Color.fromRGBO(98, 90, 151, 1),
                Color.fromRGBO(12, 3, 70, 1),
                // AppSettings.white10,
                // Color.fromARGB(255, 1, 11, 29),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)
            : const LinearGradient(colors: [
                Color.fromARGB(255, 88, 85, 85),
                Color.fromARGB(255, 15, 17, 20)
              ]),
      ),
      child: child,
    );
  }
}
