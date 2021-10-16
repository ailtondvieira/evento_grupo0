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
            const SizedBox(height: 30),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.orange[50],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Nome do gato',
                                style: Get.textTheme.headline1!.copyWith(
                                  color: AppColors.primaryDark,
                                  fontSize: 25,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text('Idade: 5 anos'),
                              const SizedBox(height: 3),
                              const Text('Origem: Espanha'),
                              const SizedBox(height: 3),
                              const Text('Idade: 5 anos'),
                              const SizedBox(height: 3),
                              const Text('Origem: Espanha'),
                              const SizedBox(height: 3),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                'https://cdn2.thecatapi.com/images/131.jpg',
                                fit: BoxFit.cover,
                                height: 175,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
