import 'package:get/get.dart';

import '../view/Home_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Simulate loading data or performing tasks for 2 seconds
    // Replace this with actual data loading or async tasks if needed.
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the HomeScreen after the delay
      Get.off(()=> HomeScreen());
    });
  }
}