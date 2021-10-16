import 'package:get/get.dart';

import '../../infra/repositories/all_repository.dart';

class HomeController extends GetxController {
  final AllRepository repository;
  HomeController({
    required this.repository,
  });

  var allBreeds;
  var allCategories;

  bool isLoading = false;

  @override
  void onInit() async {
    await getAllBreeds();
    await getAllCategories();
    super.onInit();
  }

  Future getAllBreeds() async {
    changeIsLoading(true);
    allBreeds = await repository.allBreeds();
    changeIsLoading(false);
  }

  Future getAllCategories() async {
    changeIsLoading(true);
    allCategories = await repository.allCategories();
    changeIsLoading(false);
  }

  void changeIsLoading(bool newValue) {
    isLoading = newValue;
    update();
  }
}
