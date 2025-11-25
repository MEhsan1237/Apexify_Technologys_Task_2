import 'package:apexify_technologys_quote_app/get/get_class.dart';
import 'package:apexify_technologys_quote_app/screen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // Controller register
  Get.put(QuotesController()); // Global controller
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final QuotesController controller = Get.find<QuotesController>();

    MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("hello");
    }
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: controller.isDark.value ? ThemeMode.dark : ThemeMode.light,
        home: SplashScreen(),
      );
    });
  }
}