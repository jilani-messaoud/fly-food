import 'dart:async';

import 'package:get/get.dart';
import '../screens/landingScreen.dart';

class SplashController extends GetxController {
  Timer _timer;

  void startTimer() {
    _timer = Timer(Duration(milliseconds: 4000), () {
      Get.offNamed(LandingScreen.routeName);
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
