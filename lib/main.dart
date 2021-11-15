import 'package:circle/themes/main_theme.dart';
import 'package:circle/translations/main_translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:circle/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      defaultTransition: Transition.downToUp,
      translations: MainTranslation(),
      locale: const Locale('pt', 'BR'),
      theme: MainTheme.light,
      darkTheme: MainTheme.dark,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
