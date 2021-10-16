import 'package:get/get.dart';
import './show_cat_controller.dart';

class ShowCatBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ShowCatController());
    }
}