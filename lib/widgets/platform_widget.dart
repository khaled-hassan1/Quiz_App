import 'package:flutter/material.dart';
import '../widgets/app_settings.dart';

@immutable
class PlatformWidget extends StatelessWidget {
  final WidgetBuilder androidBuilder;
  final WidgetBuilder iosBuilder;
  const PlatformWidget(
      {super.key, required this.androidBuilder, required this.iosBuilder});

  @override
  Widget build(BuildContext context) {
    if (!AppSettings.platformIos) {
      return androidBuilder(context);
    } else {
      return iosBuilder(context);
    }
  }
}
