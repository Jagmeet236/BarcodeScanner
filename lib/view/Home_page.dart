import 'package:barcode_qr_scanner/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QRCode Scanner',
          style: TextStyle(color: Colors.black54, letterSpacing: .5),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              controller.ScanBarCode();
            },
            heroTag: 'barcode_button',

            child: const Icon(
              Icons.barcode_reader,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            width: sz.width * .2,
          ),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              controller.scanQR();
            },
            heroTag: 'qrcode_button',
            child: const Icon(Icons.qr_code, color: Colors.black54),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:
         Column(
           children: [
             SizedBox(
               width: sz.width,
               height: sz.height * .2,
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Image.asset('assets/icons/icon.png', width: sz.width*.6),
             ),
           ],
         ),

    );
  }
}
