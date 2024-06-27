import 'package:flutter/material.dart';

import '../provider/names_provider.dart';
import './app_settings.dart';

@immutable
class AlertNameWidget extends StatelessWidget {
  const AlertNameWidget({
    super.key,
    required this.rtl,
    required this.formKey,
    required this.controller,
    required this.provider,
  });

  final TextDirection rtl;
  final GlobalKey<FormState> formKey;
  final TextEditingController controller;
  final NamesProvider provider;

  @override
  Widget build(BuildContext context) {
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
  }
}
