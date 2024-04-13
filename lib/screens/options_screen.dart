import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/methlan_screen.dart';
import '../screens/mix_screen.dart';
import '../screens/noon_screen.dart';
import '../screens/sifat_screen.dart';
import '../widgets/banner_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../ads/ads_initial.dart';
import '../provider/names_provider.dart';
import '../widgets/button_m_and_s.dart';
import '../widgets/gradient_container.dart';
import './lam_screen.dart';
import './makharej_screen.dart';
import './meem_screen.dart';
import './modod_screen.dart';
import './tafkhem_screen.dart';
import './tajwed_screen.dart';
import '../widgets/app_settings.dart';
import '../widgets/navigate_button.dart';

class OptionsScreen extends StatefulWidget {
  static const String route = '/options-screen';

  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsM();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsS();
  }

  @override
  Widget build(BuildContext context) {
    if (!AppSettings.isCertificateSoundCalled) {
      AppSettings.isCertificateSoundCalled = true;
      AppSettings.futureDelay(
        // () => Ads().loadAd(),
        // () => Ads().loadAd2(),
        () => null,
        () => null,
        () => null,
        () => null,
        // () => showTeacherDialog(context),
        // () => showNameDialog(context),
      );
    }
    final p = Provider.of<NamesProvider>(context, listen: false);
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
                      'أسئلة على التجويد (حفص عن عاصم)',
                      style: !AppSettings.platformIos
                          ? Theme.of(context).textTheme.titleMedium
                          : CupertinoTheme.of(context)
                              .textTheme
                              .navLargeTitleTextStyle,
                    ),
                  ),
                  if (!AppSettings.platformIos) AppSettings.sizedBox(30),
                  NavigateButton(
                      fun: () {
                        AppSettings.click();
                        ();
                        Navigator.pushNamed(context, TajweedScreen.route);
                      },
                      page: 'مبادئ علم التجويد'),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonMAndS(
                    fun: () {
                      p.updateNameM();
                      AppSettings.click();
                      ();
                      Navigator.pushNamed(
                        context,
                        MakharejScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) =>
                          Text(value.textMakharej),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonMAndS(
                    fun: () {
                      p.updateNameS();
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        SifatScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) => Text(value.textSifat),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                    page: 'النون الساكنة والتنوين',
                    fun: () {
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        NoonScreen.route,
                      );
                    },
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                    fun: () {
                      AppSettings.click();
                      ();
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
                        AppSettings.click();
                        ();
                        Navigator.pushNamed(
                          context,
                          MododScreen.route,
                        );
                      },
                      page: 'المدود'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();
                        ();
                        Navigator.pushNamed(
                          context,
                          LamScreen.route,
                        );
                      },
                      page: 'اللامات'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();
                        ();
                        Navigator.pushNamed(
                          context,
                          MehtlanScreen.route,
                        );
                      },
                      page: 'المتماثلان والمتقاربان والمتجانسان'),
                  AppSettings.sizesBoxOptionsScreen,
                  NavigateButton(
                      fun: () {
                        AppSettings.click();
                        ();
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
          // const BannerAds(),
        ],
      ),
    );
  }

  Future<void> showNameDialog(BuildContext context) async {
    TextEditingController controller = TextEditingController();
    final provider = Provider.of<NamesProvider>(context, listen: false);
    TextDirection rtl = TextDirection.rtl;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    if (!AppSettings.platformIos) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              ' اكتب اسمك من فضلك لتشارك النتيجة إن أحببت:',
              textDirection: rtl,
            ),
            content: SizedBox(
              height: 130,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'ملاحظة: لتحصل على الشهاده لابد أن تكون الأجوبة الصحيحة 7 فما فوق أو 50 فما فوق بالنسبة للاختبار على كل الأبواب بالتوفيق.',
                      textDirection: rtl,
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontFamily: '',
                      ),
                    ),
                    AppSettings.sizedBox(20),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يرجى إدخال اسمك';
                          }
                          return null;
                        },
                        textDirection: rtl,
                        controller: controller,
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'اسمك...',
                          hintTextDirection: rtl,
                        ),
                      ),
                    ),
                    AppSettings.sizedBox(20),
                  ],
                ),
              ),
            ),
            actions: [
              AppSettings.sizedBox(20),
              TextButton(
                onPressed: () {
                  AppSettings.click();
                  Navigator.pop(context);
                },
                child: Text(
                  'إلغاء',
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  String name = controller.text.trim();
                  provider.getName(name);
                  AppSettings.click();
                  Navigator.pop(context);
                },
                child: const Text(
                  'تأكيد',
                ),
              ),
            ],
          );
        },
      );
    } else {
      return showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(
            ' اكتب اسمك من فضلك لتشارك النتيجة إن أحببت:',
            textDirection: rtl,
          ),
          content: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ملاحظة: لتحصل على الشهاده لابد أن تكون الأجوبة الصحيحة 7 فما فوق أو 50 فما فوق بالنسبة للاختبار على كل الأبواب بالتوفيق.',
                  textDirection: rtl,
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                ),
                AppSettings.sizedBox(20),
                Form(
                  key: formKey,
                  child: Card(
                    child: CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'يرجى إدخال اسمك';
                          }
                          return null;
                        },
                        textAlign: TextAlign.right,
                        controller: controller,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        placeholder: '...اسمك',
                        autofocus: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                AppSettings.click();
                Navigator.pop(context);
              },
              isDestructiveAction: true,
              child: const Text(
                'إلغاء',
              ),
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                if (!formKey.currentState!.validate()) {
                  return;
                }
                String name = controller.text.trim();
                provider.getName(name);
                AppSettings.click();
                Navigator.pop(context);
              },
              child: const Text(
                'تأكيد',
              ),
            ),
          ],
        ),
      );
    }
  }

  Future<void> showTeacherDialog(BuildContext context) async {
    TextEditingController controller = TextEditingController();
    final provider = Provider.of<NamesProvider>(context, listen: false);
    TextDirection rtl = TextDirection.rtl;
    if (!AppSettings.platformIos) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'اسم المعلم المشارك كما قال لك: ',
              textDirection: rtl,
            ),
            content: SizedBox(
              height: 130,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'إذا لم يكن المعلم مشارك فقم بالضغط على إلغاء.',
                      textDirection: rtl,
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontFamily: '',
                      ),
                    ),
                    AppSettings.sizedBox(20),
                    TextField(
                      textAlignVertical: TextAlignVertical.center,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          return;
                        }
                      },
                      textDirection: rtl,
                      controller: controller,
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: 'اسم المعلم...',
                        hintTextDirection: rtl,
                      ),
                    ),
                    AppSettings.sizedBox(20),
                  ],
                ),
              ),
            ),
            actions: [
              AppSettings.sizedBox(50),
              TextButton(
                onPressed: () {
                  AppSettings.click();
                  Navigator.pop(context);
                },
                child: Text(
                  'إلغاء',
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              TextButton(
                onPressed: () {
                  String teacherName = controller.text.trim();
                  provider.getNameTeacher(teacherName);
                  AppSettings.click();
                  Navigator.pop(context);
                },
                child: const Text(
                  'تأكيد',
                ),
              ),
            ],
          );
        },
      );
    } else {
      return showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(
            'اسم المعلم المشارك كما قال لك: ',
            textDirection: rtl,
          ),
          content: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'إذا لم يكن المعلم مشارك فقم بالضغط على إلغاء.',
                  textDirection: rtl,
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                ),
                AppSettings.sizedBox(20),
                Card(
                  child: CupertinoTextFormFieldRow(
                    onChanged: (value) {
                      if (value.isEmpty) {
                        return;
                      }
                    },
                    textAlign: TextAlign.right,
                    controller: controller,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    placeholder: '...اسمك',
                    autofocus: false,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                AppSettings.click();
                Navigator.pop(context);
              },
              isDestructiveAction: true,
              child: const Text(
                'إلغاء',
              ),
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                String teacherName = controller.text.trim();
                provider.getNameTeacher(teacherName);
                AppSettings.click();
                Navigator.pop(context);
              },
              child: const Text(
                'تأكيد',
              ),
            ),
          ],
        ),
      );
    }
  }
}
