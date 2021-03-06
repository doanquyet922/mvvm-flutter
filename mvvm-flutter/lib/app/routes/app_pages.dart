import 'package:base_source/app/bindings/home_binding.dart';
import 'package:base_source/app/bindings/photolist_binding.dart';
import 'package:base_source/app/bindings/sign_in_binding.dart';
import 'package:base_source/app/bindings/splash_binding.dart';
import 'package:base_source/app/bindings/user_detail_binding.dart';
import 'package:base_source/app/feature/photo/views/photo_list_screen.dart';
import 'package:base_source/app/feature/signin/views/sign_in_screen.dart';
import 'package:base_source/app/feature/splash/views/splash_screen.dart';
import 'package:base_source/app/feature/user/views/home_screen.dart';
import 'package:base_source/app/feature/user/views/user_details_screen.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.SIGN_IN,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const UserDetailsScreen(),
      binding: UserDetailBinding(),
    ),
    GetPage(
      name: Routes.PHOTO_LIST,
      page: () => const PhotoListScreen(),
      binding: PhotoListBinding(),
    ),
  ];
}
