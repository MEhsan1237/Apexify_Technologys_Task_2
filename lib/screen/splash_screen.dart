import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:apexify_technologys_quote_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async{
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image(image: AssetImage("assets/images/read.jpg"),fit: BoxFit.cover,height: 190,width: 160,),
              Text(
                "Find Your Daily Motivation",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30,),
              SpinKitThreeBounce(color: Colors.deepPurple,size: 20,)
            ],
          ),
        ),

    );
  }
}
