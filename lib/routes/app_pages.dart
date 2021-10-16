import 'package:get/get.dart';

import '../presenter/home/home_bindings.dart';
import '../presenter/home/home_page.dart';
import '../presenter/show_cat/show_cat_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.show_cat,
      page: () => const ShowCatPage(),
    ),
  ];
}
