import 'package:flutter/material.dart';

import '../provider/base_provider.dart';
import './app_settings.dart';

class HearingWidget extends StatelessWidget {
  final QuizProvider provider;
  final List<String> soundPaths;

  const HearingWidget({
    Key? key,
    required this.provider,
    required this.soundPaths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        soundPaths.length,
        (index) => AppSettings.putPadding(
          5.0,
          IconButton(
            tooltip: (index + 1).toString(),
            padding: AppSettings.edgeInsetsAll(10.0),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.blue.shade200),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: AppSettings.borderRadiusCircle(15),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(AppSettings.white),
            ),
            onPressed: () {
              AppSettings.makeSound(soundPaths[index]);
              if (soundPaths.length >= 2) {
                snackBaar(context, index);
              }
            },
            icon: const Icon(
              Icons.hearing,
              color: AppSettings.blue,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }

  void snackBaar(BuildContext context, int index) {
    ScaffoldMessengerState scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();
    scaffoldMessenger.showSnackBar(
      SnackBar(
        backgroundColor: AppSettings.blue.withOpacity(0.5),
        duration: const Duration(seconds: 2),
        content: Text(
          'رقم  (${(index + 1).toString()})',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: AppSettings.center,
        ),
      ),
    );
  }
}
