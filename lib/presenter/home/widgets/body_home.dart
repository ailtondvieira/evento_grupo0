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
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Text(
                      'sinks',
                      style: Get.textTheme.headline1!.copyWith(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  );
                },
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Ver gatinho',
                style: Get.textTheme.headline1!.copyWith(fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: const [
                    CardCatHome(
                      name: 'Gatinho x',
                      energyLevel: '1',
                      intelligence: '12',
                      origin: 'Espanha',
                    ),
                    CardCatHome(
                      name: 'Gatinho x',
                      energyLevel: '1',
                      intelligence: '12',
                      origin: 'Espanha',
                    ),
                    CardCatHome(
                      name: 'Gatinho x',
                      energyLevel: '1',
                      intelligence: '12',
                      origin: 'Espanha',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
