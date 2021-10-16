import 'package:evento001/models/breeds_model.dart';
import 'package:get/get.dart';
import 'package:get/get_connect.dart';

class AllRepository extends GetConnect {
  Future<BreedsModel> breedsGet() async {
    var response = await get('https://api.thecatapi.com/v1/breeds', headers: {
      'x-api-key': '3e27cd10-26ab-4dff-be1e-d2395d31c8ef',
      'Content-Type': 'application/json',
    });

    BreedsModel varteste = BreedsModel.fromJson(response.body);

    return response.body;
  }
}
