import 'package:evento001/presenter/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';
import 'card_cat_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wiki Cat',
              style: Get.textTheme.headline1!.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Entenda mais sobre os gatinhos do planeta.',
              style: Get.textTheme.bodyText1,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 50,
                child: GetBuilder<HomeController>(
                  init: HomeController(repository: Get.find()),
                  builder: (_) {
                    if (_.isLoading)
                      // ignore: curly_braces_in_flow_control_structures
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator.adaptive(),
                        ],
                      );
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Text(
                            _.allCategories[index]['name'],
                            style: Get.textTheme.headline1!.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: GetBuilder<HomeController>(
                  init: HomeController(repository: Get.find()),
                  builder: (_) {
                    if (_.isLoading)
                      // ignore: curly_braces_in_flow_control_structures
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator.adaptive(),
                        ],
                      );
                    return ListView.builder(
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CardCatHome(
                          name: _.allBreeds[index]['name'],
                          intelligence: _.allBreeds[index]['intelligence'].toString(),
                          origin: _.allBreeds[index]['origin'].toString(),
                          energyLevel: _.allBreeds[index]['energy_level'].toString(),
                          imgPath: _.allBreeds[index]['image']['url'].toString(),
                        );
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
