import 'package:get/get.dart';

class AllRepository extends GetConnect {
  Future allBreeds() async {
    var response = await get('https://api.thecatapi.com/v1/breeds',
        headers: {'x-api-key': '3e27cd10-26ab-4dff-be1e-d2395d31c8ef'});

    return response.body;
  }
}
