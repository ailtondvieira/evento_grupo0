import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_connect.dart';

class AllRepository extends GetConnect {
  Future breedsGet() async {
    var response = await get('https://api.thecatapi.com/v1/breeds', headers: {
      'x-api-key': '3e27cd10-26ab-4dff-be1e-d2395d31c8ef',
      'Content-Type': 'application/json',
    });

    return response.body;
  }
}
