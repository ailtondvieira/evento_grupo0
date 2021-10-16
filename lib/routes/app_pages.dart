import 'package:evento001/presenter/show_cat/show_cat_page.dart';

import '../presenter/home/home_page.dart';

import 'app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.show_cat,
      page: () => const ShowCatPage(),
    ),
  ];
}
