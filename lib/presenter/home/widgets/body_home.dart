import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TinderCat',
              style: Get.textTheme.headline1!.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Escolha o seu melhor gatinho',
              style: Get.textTheme.bodyText1,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Ver gatinho',
                style: Get.textTheme.headline1!.copyWith(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
