import 'package:evento001/repository/repository.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllRepository());
    Get.put(HomeController(repository: Get.find()));
  }
}
