import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viral_on_tiktok/configs/app_theme.dart';
import 'package:viral_on_tiktok/controller/app_controller.dart';
import 'package:viral_on_tiktok/routes/route_pages.dart';
import 'package:viral_on_tiktok/service.dart';

import 'pages/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final service = Service();
  await service.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppController(), permanent: true);
    return GetMaterialApp(
      title: 'Viral on Tiktok',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      getPages: routes,
    );
  }
}
