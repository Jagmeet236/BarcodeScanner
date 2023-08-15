import 'package:barcode_qr_scanner/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Use your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Lottie.asset(
              'assets/lottie/animation.json', // Replace with your Lottie animation file path
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: sz.height*.3,),
            const Text("QRCode Scanner",style: TextStyle(fontSize: 18,color: Colors.black54,letterSpacing: 1),)
        ]),
      ),
    );
  }
}