import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viral_on_tiktok/configs/app_theme.dart';
import 'package:viral_on_tiktok/pages/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(SplashController());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: ScaleTransition(
          scale: controller.animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.flash_on_outlined,
                    color: AppTheme.primary,
                    size: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 24),
                    child: Icon(
                      Icons.flash_on,
                      color: AppTheme.secondary,
                      size: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 12),
                    child: Icon(
                      Icons.flash_on,
                      color: Theme.of(context).primaryColorDark,
                      size: 100,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Viral on Tiktok',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),

              const SizedBox(height: 20),
              CircularProgressIndicator(
                color: AppTheme.primary,
                backgroundColor: AppTheme.secondary,
              ),
              Spacer(),
              SafeArea(
                child: Text(
                  "Powered by Sulaib",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
