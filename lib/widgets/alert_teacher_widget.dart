import 'package:flutter/material.dart';

import '../provider/names_provider.dart';
import './app_settings.dart';
import './button_with_widget.dart';

@immutable
class AlertTeacherWidget extends StatelessWidget {
  const AlertTeacherWidget({
    super.key,
    required this.rtl,
    required this.provider,
  });

  final TextDirection rtl;
  final NamesProvider provider;

  @override
  Widget build(BuildContext context) {
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
  }
}
