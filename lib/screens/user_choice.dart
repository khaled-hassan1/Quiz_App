import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../screens/options_screen.dart';
import '../widgets/button_with_widget.dart';
import '../widgets/app_settings.dart';

@immutable
class UserOption extends StatelessWidget {
  static String route = '/user-option-screen';

  const UserOption({super.key});

  @override
  Widget build(BuildContext context) {
    Size size2 = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: SizedBox(
            height: 70,
            child: Marquee(
              text: '🤲طبتم وطاب سعيكم وتبوأتم من الجنة منزلا',
              style: Theme.of(context).textTheme.titleMedium,
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: 20.0,
              velocity: 15.0,
              pauseAfterRound: Duration.zero,
              startPadding: 10.0,
              accelerationDuration: const Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: const Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.purple.shade50, Colors.deepPurple.shade200])),
          child: Column(
            mainAxisAlignment: AppSettings.mainAxisAlignmentCenter,
            children: [
              AppSettings.putPadding(
                30,
                Container(
                  height: size2.height / 2,
                  width: size2.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    borderRadius: AppSettings.borderRadiusCircle(20),
                  ),
                  child: Column(
                    mainAxisAlignment: AppSettings.mainAxisAlignmentCenter,
                    children: [
                      ButtonWithWidget(
                        fun: () {
                          AppSettings.click();
                          Navigator.pushNamed(context, OptionsScreen.route);
                        },
                        child:
                            AppSettings.putPadding(10, const Text('كممتحِن')),
                      ),
                      AppSettings.sizedBox(10),
                      TextButton(
                          onPressed: null,
                          //     () {
                          //   AppSettings.click();
                          //   Navigator.pushNamed(
                          //       context, TeacherSubscribe.route);
                          // },
                          child: AppSettings.putPadding(
                              10,
                              const Text(
                                '(قريبا) اشتراك كمعلم',
                                style: TextStyle(color: Colors.grey),
                              ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
