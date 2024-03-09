import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../screens/mix_screen.dart';
import '../model/ads_initial.dart';
import '../widgets/app_settings.dart';
import '../screens/lam_screen.dart';
import '../screens/methlan_screen.dart';
import '../screens/tafkhem_screen.dart';
import '../screens/tajwed_screen.dart';
import '../screens/meem_screen.dart';
import '../screens/modod_screen.dart';
import '../screens/noon_screen.dart';
import '../widgets/banner_ads.dart';
import '../widgets/gradient_container.dart';
import '../widgets/navigate_button.dart';

class EasyTestScreen extends StatelessWidget {
  static const route = '/easy-screen';

  const EasyTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (!AppSettings.isCertificateSoundCalled) {
      AppSettings.isCertificateSoundCalled = true;

      AppSettings.futureDelay(
        () => Ads().loadAd(),
        () => Ads().loadAd2(),
        () => null,
        () => null,
      );
    }

    return SafeArea(
      child: Stack(
        children: [
          GradientContainer(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        '( ${AppSettings.easy} )',
                        style: !AppSettings.platform
                            ? Theme.of(context).textTheme.titleMedium
                            : CupertinoTheme.of(context)
                                .textTheme
                                .navLargeTitleTextStyle,
                      )),
                  if (!AppSettings.platform) AppSettings.sizedBox(30),
                  NavigateButton(
                      fun: () {
                        AppSettings.click();();
                        Navigator.pushNamed(context, TajweedScreen.route);
                      },
                      page: 'مبادئ علم التجويد'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                    fun: () {
                      AppSettings.click();();
                      Navigator.pushNamed(
                        context,
                        NoonScreen.route,
                      );
                    },
                    page: 'النون الساكنة والتنوين',
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                    fun: () {
                      AppSettings.click();();
                      Navigator.pushNamed(
                        context,
                        MeemScreen.route,
                      );
                    },
                    page: 'الميم الساكنة',
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();();
                        Navigator.pushNamed(
                          context,
                          MododScreen.route,
                        );
                      },
                      page: 'المدود'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();();
                        Navigator.pushNamed(
                          context,
                          LamScreen.route,
                        );
                      },
                      page: 'اللامات'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();();
                        Navigator.pushNamed(
                          context,
                          MehtlanScreen.route,
                        );
                      },
                      page: 'المتماثلان والمتقاربان والمتجانسان'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();();
                        Navigator.pushNamed(
                          context,
                          TafkhemScreen.route,
                        );
                      },
                      page: 'الترقيق والتفخيم'),
                  AppSettings.sizedBox(40),
                  FilledButton(
                    onPressed: () {
                     AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        MixScreen.route,
                      );
                    },
                    style: AppSettings.buttonStyle,
                    child: const Text(
                      'اختبار على كل الأبواب',
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                ],
              ),
            ),
          ),
          const BannerAds(),
        ],
      ),
    );
  }
}

