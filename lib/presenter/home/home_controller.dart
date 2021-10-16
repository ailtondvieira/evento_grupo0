import 'dart:developer';

import 'package:get/get.dart';

import 'package:evento001/infra/repositories/all_repository.dart';

class HomeController extends GetxController {
  final AllRepository repository;
  HomeController({
    required this.repository,
  });
  var allBreeds;
  @override
  void onInit() async {
    allBreeds = await repository.allBreeds();

    super.onInit();
  }
}
