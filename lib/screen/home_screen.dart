import 'package:apexify_technologys_quote_app/get/get_class.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final QuotesController controller = Get.put(QuotesController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Quote App", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          if (kDebugMode) {
            print("Next Quote");
          }
          final authorShow =
              controller.allQuotes[controller.initialNumber.value]['author']!;
          final quoteShow =
              controller.allQuotes[controller.initialNumber.value]['quote']!;
          return AnimatedOpacity(

            opacity: controller.opacityNumber.value    ,
            duration: Duration(milliseconds: 900),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 110),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      authorShow,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      quoteShow,textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 70),
                    ElevatedButton(
                      onPressed: () {
                        controller.setQuotesFun();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        elevation: 2,
                        shape: StadiumBorder(),
                      ),
                      child: Center(
                        child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
