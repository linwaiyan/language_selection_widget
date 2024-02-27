import 'package:flutter/material.dart';
import 'package:flutter_super_scaffold/flutter_super_scaffold.dart';
import 'package:get/get.dart';
import 'package:language_select/language/language.dart';
import 'package:language_select/view/v_language2.dart';

class ViewLanguage extends StatelessWidget {
  ViewLanguage({super.key});

  final Rx<Locale> selectedLocale =
      Rx<Locale>(Get.locale ?? const Locale('mm', 'MM'));

  @override
  Widget build(BuildContext context) {
    return FlutterSuperScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Text(
              xEnLang()
                  ? 'Welcome to SAN PYA EXPRESS!'
                  : 'SAN PYA EXPRESS မှကြိုဆိုပါသည်',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const ViewLanguage2());
              },
              child: const Text('next')),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => buildLanguageButton(const Locale("mm"), 'မြန်မာ'),
              ),
              SizedBox(width: Get.width * 0.01),
              Obx(
                () => buildLanguageButton(const Locale("en"), 'English'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLanguageButton(Locale locale, String buttonText) {
    bool isSelected = selectedLocale.value.languageCode == locale.languageCode;

    return GestureDetector(
      onTap: () {
        selectedLocale.value = locale;
        Get.updateLocale(locale);
      },
      child: Container(
        alignment: Alignment.center,
        height: Get.height * 0.05,
        width: Get.width * 0.2,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF2C3D5E) : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: GestureDetector(
          onTap: () {
            selectedLocale.value = locale;
            Get.updateLocale(locale);
          },
          child: Text(
            buttonText,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
