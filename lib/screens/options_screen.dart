import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/difficult_screen.dart';
import '../model/ads_initial.dart';
import '../provider/name_provider.dart';
import '../screens/easy_test_screen.dart';
import '../widgets/app_settings.dart';
import '../widgets/navigate_button.dart';
import './medium_screen.dart';

class OptionsScreen extends StatelessWidget {
  static const String route = '/options-screen';

  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (!AppSettings.isCertificateSoundCalled) {
      AppSettings.isCertificateSoundCalled = true;
      AppSettings.futureDelay(
        () => Ads().loadAd(),
        () => Ads().loadAd2(),
        () => showTeacherDialog(context),
        () => showNameDialog(context),
      );
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80,
          title: Text(
            'أسئلة على التجويد (حفص عن عاصم)',
            style: !AppSettings.platform
                ? Theme.of(context).textTheme.titleMedium
                : CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigateButtonOptionsScreen(
                  fun: () {
                    AppSettings.click();
                    Navigator.pushNamed(context, EasyTestScreen.route);
                  },
                  page: AppSettings.easy),
              AppSettings.sizedBox(30),
              NavigateButtonOptionsScreen(
                  fun: () {
                    AppSettings.click();
                    Navigator.pushNamed(context, MediumTestScreen.route);
                  },
                  page: AppSettings.medium),
              AppSettings.sizedBox(30),
              NavigateButtonOptionsScreen(
                  fun: () {
                    AppSettings.click();
                    Navigator.pushNamed(context, DifficultTestScreen.route);
                  },
                  page: AppSettings.difficult),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showNameDialog(BuildContext context) async {
    TextEditingController controller = TextEditingController();
    final provider = Provider.of<NameProvider>(context, listen: false);
    TextDirection rtl = TextDirection.rtl;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    if (!AppSettings.platform) {
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
    final provider = Provider.of<NameProvider>(context, listen: false);
    TextDirection rtl = TextDirection.rtl;
    if (!AppSettings.platform) {
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
