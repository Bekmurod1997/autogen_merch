import 'package:autogen_merch/locales/strings.dart';
import 'package:autogen_merch/ui/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [SfGlobalLocalizations.delegate],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: StringTranslations(),
      locale: const Locale("ru", "Ru"),
      fallbackLocale: const Locale("ru", "Ru"),
      home: const LandingScreen(),
    );
  }
}
