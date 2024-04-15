import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './app_settings.dart';

class NavigateButton extends StatelessWidget {
  final String page;
  final VoidCallback fun;

  const NavigateButton({super.key, required this.page, required this.fun});

  @override
  Widget build(BuildContext context) {
    return AppSettings.platformIos
        ? CupertinoButton.filled(
            onPressed: fun,
            child: Text(
              page,
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          )
        : TextButton(
            style: AppSettings.buttonStyle.copyWith(
                padding:
                    MaterialStatePropertyAll(AppSettings.edgeInsetsAll(5))),
            onPressed: fun,
            child: Text(page),
          );
  }
}

class NavigateButtonOptionsScreen extends StatelessWidget {
  final String page;
  final VoidCallback fun;

  const NavigateButtonOptionsScreen(
      {super.key, required this.page, required this.fun});

  @override
  Widget build(BuildContext context) {
    return AppSettings.platformIos
        ? CupertinoButton.filled(
            onPressed: fun,
            child: Text(
              page,
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          )
        : TextButton(
            onPressed: fun,
            style: AppSettings.buttonStyle.copyWith(
                padding:
                    MaterialStatePropertyAll(AppSettings.edgeInsetsAll(18))),
            child: Text(page),
          );
  }
}
