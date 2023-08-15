import 'package:barcode_qr_scanner/view/Home_page.dart';
import 'package:barcode_qr_scanner/view/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

//global object for accessing device screen size
late Size sz;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sz = MediaQuery.of(context).size;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR & Barcode Scanner',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () =>  SplashScreen()),
      ],
    );
  }
}
