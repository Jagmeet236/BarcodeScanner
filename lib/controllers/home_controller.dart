import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String scannedQrCode = '';
  String scannedBarCode = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> scanQR() async {
    try {
      scannedQrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      Get.snackbar('Result', "QR Code: $scannedQrCode",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.transparent,
          colorText: Colors.black);
    } on PlatformException {
      scannedBarCode = "Failed to get the platform version";
    }
  }

  Future<void> ScanBarCode() async {
    try {
      scannedBarCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      Get.snackbar('Result', "Bar Code: $scannedBarCode",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.white,
          colorText: Colors.black);
    } on PlatformException {
      scannedBarCode = "Failed to get the platform version";
    }
  }
}
