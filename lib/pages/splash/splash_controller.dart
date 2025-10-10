import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animationController.forward();
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: animationController, curve: Curves.elasticInOut));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Get.offNamedUntil('/home', (route) => false);
    // });
  }
}
