import 'dart:developer';

import 'package:get/get.dart';

import 'package:evento001/repository/repository.dart';

class HomeController extends GetxController {
  final AllRepository repository;
  HomeController({
    required this.repository,
  });

  @override
  void onInit() async {
    log('geagea');
    var teste = await repository.breedsGet();

    log('${teste}');
    super.onInit();
  }
}
