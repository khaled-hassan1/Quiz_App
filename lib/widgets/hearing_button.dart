import 'package:flutter/material.dart';

import '../provider/base_provider.dart';
import './app_settings.dart';

@immutable
class HearingWidget extends StatelessWidget {
  final QuizProvider provider;
  final List<String> soundPaths;

  const HearingWidget({
    super.key,
    required this.provider,
    required this.soundPaths,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        soundPaths.length,
        (index) => AppSettings.putPadding(
          5.0,
          Stack(clipBehavior: Clip.none, children: [
            IconButton(
              padding: AppSettings.edgeInsetsAll(10.0),
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.blue.shade200),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: AppSettings.borderRadiusCircle(15),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppSettings.white),
              ),
              onPressed: () => AppSettings.makeSound(soundPaths[index]),
              icon: const Icon(
                Icons.hearing,
                color: AppSettings.blue,
                size: 50,
              ),
            ),
            if (soundPaths.length >= 2)
              Positioned(
                  top: -30,
                  left: 20,
                  child: Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: AppSettings.green),
                      ),
                      color: AppSettings.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(10),
                        topStart: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(
                          color: AppSettings.main,
                          fontWeight: AppSettings.bold),
                    ),
                  )),
          ]),
        ),
      ),
    );
  }
}
