import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/phonics_screen.dart';
import './alph_screens/methlan_screen.dart';
import './alph_screens/mix_screen.dart';
import './alph_screens/noon_screen.dart';
import './alph_screens/sifat_screen.dart';
import '../widgets/banner_ads.dart';
import '../ads/ads_initial.dart';
import '../provider/names_provider.dart';
import '../widgets/button_with_widget.dart';
import '../widgets/gradient_container.dart';
import './alph_screens/lam_screen.dart';
import './alph_screens/makharej_screen.dart';
import './alph_screens/meem_screen.dart';
import './alph_screens/modod_screen.dart';
import './alph_screens/tafkhem_screen.dart';
import './alph_screens/tajwed_screen.dart';
import '../widgets/app_settings.dart';

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
        .loadNameFromSharedPrefsMakharej();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsSifat();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsSounds();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsLam();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsMabade();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsMedod();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsMeem();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsMethlen();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsNoon();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsTest();
    Provider.of<NamesProvider>(context, listen: false)
        .loadNameFromSharedPrefsTarqeq();
  }

  @override
  Widget build(BuildContext context) {
    // final isTeacherPressed =
    //     Provider.of<CheckSettingsProvider>(context, listen: false).isTeacher;
    if (!AppSettings.isCertificateSoundCalled) {
      // AppSettings.isCertificateSoundCalled = true;
      AppSettings.futureDelay(
        () => Ads().loadAd(),
        () => Ads().loadAd2(),
        () {
          // if (!isTeacherPressed) {
          //   showTeacherDialog(context);
          // }
          showTeacherDialog(context);
        },
        () => showNameDialog(context),
        // () => null,
        // () => null,
        // () => null,
      );
    }
    final nameProvider = Provider.of<NamesProvider>(context, listen: false);

    return SafeArea(
      child: Stack(
        children: [
          GradientContainer(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: AppSettings.mainAxisAlignmentCenter,
                crossAxisAlignment: AppSettings.crossAxisAlignmentCenter,
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
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Consumer<NamesProvider>(
                      builder: (context, value, _) => Text(
                        value.teacherName == null
                            ? value.defaultTeacher
                            : 'أ/${value.teacherName}',
                        style: !AppSettings.platformIos
                            ? Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.tealAccent)
                            : CupertinoTheme.of(context)
                                .textTheme
                                .navLargeTitleTextStyle,
                      ),
                    ),
                  ),
                  if (!AppSettings.platformIos) AppSettings.sizedBox(30),
                  ButtonWithWidget(
                      fun: () {
                        AppSettings.click();
                        ();
                        Navigator.pushNamed(context, TajweedScreen.route);
                        nameProvider.updateNameMadabe();
                      },
                      child: Consumer<NamesProvider>(
                        builder: (context, value, child) =>
                            Text(value.textMabade),
                      )),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        MakharejScreen.route,
                      );
                      nameProvider.updateNameMakharej();
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) =>
                          Text(value.textMakharej),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        SifatScreen.route,
                      );
                      nameProvider.updateNameSifat();
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) => Text(value.textSifat),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      nameProvider.updateNameSounds();
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        PhonicsScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) =>
                          Text(value.textSounds),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) => Text(value.textNoon),
                    ),
                    fun: () {
                      nameProvider.updateNameNoon();
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        NoonScreen.route,
                      );
                    },
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      nameProvider.updateNameMeem();
                      AppSettings.click();
                      ();
                      Navigator.pushNamed(
                        context,
                        MeemScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) => Text(value.textMeem),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      nameProvider.updateNameMedod();
                      AppSettings.click();
                      ();
                      Navigator.pushNamed(
                        context,
                        MododScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) => Text(value.textMedod),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                      fun: () {
                        nameProvider.updateNameLam();
                        AppSettings.click();
                        ();
                        Navigator.pushNamed(
                          context,
                          LamScreen.route,
                        );
                      },
                      child: Consumer<NamesProvider>(
                        builder: (context, value, child) => Text(value.textLam),
                      )),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      nameProvider.updateNameMethlen();
                      AppSettings.click();
                      ();
                      Navigator.pushNamed(
                        context,
                        MehtlanScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) =>
                          Text(value.textMethlen),
                    ),
                  ),
                  AppSettings.sizesBoxOptionsScreen,
                  ButtonWithWidget(
                    fun: () {
                      nameProvider.updateNameTarqeq();
                      AppSettings.click();
                      ();
                      Navigator.pushNamed(
                        context,
                        TafkhemScreen.route,
                      );
                    },
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) =>
                          Text(value.textTarqeq),
                    ),
                  ),
                  AppSettings.sizedBox(40),
                  FilledButton(
                    onPressed: () {
                      nameProvider.updateNameTest();
                      AppSettings.click();
                      Navigator.pushNamed(
                        context,
                        MixScreen.route,
                      );
                    },
                    style: AppSettings.buttonStyle,
                    child: Consumer<NamesProvider>(
                      builder: (context, value, child) => Text(value.textTest),
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

  Future<void> showNameDialog(BuildContext context) async {
    TextEditingController controller = TextEditingController();
    final provider = Provider.of<NamesProvider>(context, listen: false);
    TextDirection rtl = TextDirection.rtl;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    if (!AppSettings.platformIos) {
      return showDialog(
        context: context,
        barrierDismissible: false,
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
              // TextButton(
              //   onPressed: () {
              //     AppSettings.click();
              //     Navigator.pop(context);
              //   },
              //   child: Text(
              //     'إلغاء',
              //     style: TextStyle(color: Colors.grey.shade900),
              //   ),
              // ),
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
              mainAxisAlignment: AppSettings.mainAxisAlignmentCenter,
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

  // Future<void> showTeacherDialog(BuildContext context) async {
  //   TextEditingController controller = TextEditingController();
  //   final provider = Provider.of<NamesProvider>(context, listen: false);
  //   TextDirection rtl = TextDirection.rtl;
  //   if (!AppSettings.platformIos) {
  //     return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text(
  //             'اسم المعلم المشارك كما قال لك: ',
  //             textDirection: rtl,
  //           ),
  //           content: SizedBox(
  //             height: 130,
  //             child: SingleChildScrollView(
  //               child: Column(
  //                 children: [
  //                   Text(
  //                     'إذا لم يكن المعلم مشارك فقم بالضغط على إلغاء.',
  //                     textDirection: rtl,
  //                     style: TextStyle(
  //                       color: Colors.grey.shade900,
  //                       fontFamily: '',
  //                     ),
  //                   ),
  //                   AppSettings.sizedBox(20),
  //                   TextField(
  //                     textAlignVertical: TextAlignVertical.center,
  //                     onChanged: (value) {
  //                       if (value.isEmpty) {
  //                         return;
  //                       }
  //                     },
  //                     textDirection: rtl,
  //                     controller: controller,
  //                     style: const TextStyle(fontSize: 20),
  //                     decoration: InputDecoration(
  //                       hintText: 'اسم المعلم...',
  //                       hintTextDirection: rtl,
  //                     ),
  //                   ),
  //                   AppSettings.sizedBox(20),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           actions: [
  //             AppSettings.sizedBox(50),
  //             TextButton(
  //               onPressed: () {
  //                 AppSettings.click();
  //                 Navigator.pop(context);
  //               },
  //               child: Text(
  //                 'إلغاء',
  //                 style: TextStyle(color: Colors.grey.shade900),
  //               ),
  //             ),
  //             TextButton(
  //               onPressed: () {
  //                 String teacherName = controller.text.trim();
  //                 provider.getNameTeacher(teacherName);
  //                 AppSettings.click();
  //                 Navigator.pop(context);
  //               },
  //               child: const Text(
  //                 'تأكيد',
  //               ),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   } else {
  //     return showCupertinoModalPopup(
  //       context: context,
  //       builder: (context) => CupertinoAlertDialog(
  //         title: Text(
  //           'اسم المعلم المشارك كما قال لك: ',
  //           textDirection: rtl,
  //         ),
  //         content: SizedBox(
  //           height: AppSettings.hundred,
  //           child: Column(
  //             crossAxisAlignment: AppSettings.crossAxisAlignmentCenter,
  //             children: [
  //               Text(
  //                 'إذا لم يكن المعلم مشارك فقم بالضغط على إلغاء.',
  //                 textDirection: rtl,
  //                 style: TextStyle(
  //                   color: Colors.grey.shade900,
  //                 ),
  //               ),
  //               AppSettings.sizedBox(20),
  //               Card(
  //                 child: CupertinoTextFormFieldRow(
  //                   onChanged: (value) {
  //                     if (value.isEmpty) {
  //                       return;
  //                     }
  //                   },
  //                   textAlign: TextAlign.right,
  //                   controller: controller,
  //                   style: const TextStyle(
  //                     fontSize: 20,
  //                   ),
  //                   placeholder: '...اسمك',
  //                   autofocus: false,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         actions: [
  //           CupertinoDialogAction(
  //             onPressed: () {
  //               AppSettings.click();
  //               Navigator.pop(context);
  //             },
  //             isDestructiveAction: true,
  //             child: const Text(
  //               'إلغاء',
  //             ),
  //           ),
  //           CupertinoDialogAction(
  //             isDefaultAction: true,
  //             onPressed: () {
  //               String teacherName = controller.text.trim();
  //               provider.getNameTeacher(teacherName);
  //               AppSettings.click();
  //               Navigator.pop(context);
  //             },
  //             child: const Text(
  //               'تأكيد',
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

  Future<void> showTeacherDialog(
    BuildContext context,
  ) async {
    final provider = Provider.of<NamesProvider>(context, listen: false);
    // final newTeacher = Provider.of<NewTeacherItem>(context, listen: false);
    TextDirection rtl = TextDirection.rtl;
    if (!AppSettings.platformIos) {
      return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'اختر المعلم:  ',
              textDirection: rtl,
            ),
            content:
                //  data == null
                //     ? const Center(
                //         child: Text('انتظر...'),
                //       )
                //     :
                SingleChildScrollView(
              child: Column(
                mainAxisAlignment: AppSettings.mainAxisAlignmentCenter,
                children: [
                  AppSettings.sizedBox(20),
                  AppSettings.putPadding(
                      2.0,
                      ButtonWithWidget(
                        fun: () {
                          String teacherName = 'خالد حسن غالي';
                          provider.getNameTeacher(teacherName);
                          AppSettings.click();
                          Navigator.pop(context);
                        },
                        child: const Text('خالد حسن غالي'),
                      )),
                  AppSettings.sizedBox(20),
                  AppSettings.putPadding(
                    2.0,
                    ButtonWithWidget(
                      fun: () {
                        String teacherName = 'محمد أبو سمرة';
                        provider.getNameTeacher(teacherName);
                        AppSettings.click();
                        Navigator.pop(context);
                      },
                      child: const Text('محمد أبو سمرة'),
                    ),
                  ),
                  AppSettings.sizedBox(20),
                  // ...newTeacher.items.map(
                  //   (item) => AppSettings.putPadding(
                  //     2.0,
                  //     ButtonWithWidget(
                  //       fun: () {
                  //         // provider.a = File(item.imagePath.path);
                  //         // item.name = data['name'];
                  //         debugPrint(
                  //             '============================================${item.name}');
                  //         provider.getNameTeacher(item.name!);
                  //         AppSettings.click();
                  //         Navigator.pop(context);
                  //       },
                  //       child: Text(item.name!),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
