import 'package:apexify_technologys_quote_app/get/get_class.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final QuotesController controller = Get.find<QuotesController>();

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) print("HomeScreen Build → This should print only ONCE");

    return Scaffold(
      appBar: AppBar(
        title: Text("Quote App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Column(
                children: [
                  RadioListTile<int>(
                    title: Text("Light Theme"),
                    value: 1,
                    groupValue: controller.selectedOption.value,
                    onChanged: (val) => controller.toggleThemeFromRadio(val!),
                  ),
                  RadioListTile<int>(
                    title: Text("Dark Theme"),
                    value: 2,
                    groupValue: controller.selectedOption.value,
                    onChanged: (val) => controller.toggleThemeFromRadio(val!),
                  ),
                ],
              );
            }),
            SizedBox(height: 30),

            // 🔥 Only QUOTE + BUTTON rebuild
            Obx(() {
              if (kDebugMode) print("Quote & Button Rebuild");

              final author = controller
                  .allQuotes[controller.initialNumber.value]['author']!;
              final quote = controller
                  .allQuotes[controller.initialNumber.value]['quote']!;

              return AnimatedOpacity(
                opacity: controller.opacityNumber.value,
                duration: Duration(milliseconds: 900),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '" $author "',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 10),

                    Text(
                      quote,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),

                    SizedBox(height: 25),

                    ElevatedButton(
                      onPressed: controller.setQuotesFun,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        fixedSize: Size(180, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text("Next", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
