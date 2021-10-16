import 'package:evento001/presenter/home/home_bindings.dart';

import '../presenter/home/home_page.dart';

import 'app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.show_cat,
      page: () => const HomePage(),
    ),
  ];
}
