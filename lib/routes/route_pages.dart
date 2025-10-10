import 'package:get/get.dart';
import 'package:viral_on_tiktok/pages/splash/splash_view.dart';

final List<GetPage> routes = [
  GetPage(name: SplashPage.routeName, page: () => const SplashPage()  ),
  GetPage(name: '/home', page: () => const SplashPage()  ), // Replace with actual HomePage

];
