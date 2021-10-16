import 'package:evento001/models/breeds_model.dart';
import 'package:get/get.dart';
import 'package:get/get_connect.dart';

class AllRepository extends GetConnect {
  Future<List<BreedsModel>> breedsGet() async {
    var response = await get('https://api.thecatapi.com/v1/breeds', headers: {
      'x-api-key': '3e27cd10-26ab-4dff-be1e-d2395d31c8ef',
      'Content-Type': 'application/json',
    });

    List<BreedsModel> breeds = ListBreeds.fromJson(response.body) as List<BreedsModel>;
    return breeds;
  }
}
