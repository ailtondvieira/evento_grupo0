import 'package:evento001/infra/repositories/all_repository.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AllRepository());
    Get.put(HomeController(repository: Get.find()));
  }
}
