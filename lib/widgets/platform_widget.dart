import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/app_settings.dart';

class PlatformWidget extends StatelessWidget {
  final WidgetBuilder androidBuilder;
  final WidgetBuilder iosBuilder;
  const PlatformWidget(
      {super.key, required this.androidBuilder, required this.iosBuilder});

  @override
  Widget build(BuildContext context) {
    if (!AppSettings.platform) {
      return androidBuilder(context);
    } else {
      return iosBuilder(context);
    }
  }
}
