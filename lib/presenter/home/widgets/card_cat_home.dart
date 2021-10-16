import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';

class CardCatHome extends StatelessWidget {
  final String name;
  final String intelligence;
  final String origin;
  final String energyLevel;

  const CardCatHome({
    Key? key,
    required this.name,
    required this.intelligence,
    required this.origin,
    required this.energyLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
                    name,
                    style: Get.textTheme.headline1!.copyWith(
                      color: AppColors.primaryDark,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text('Inteligência: $intelligence'),
                  const SizedBox(height: 3),
                  Text('Origem: $origin'),
                  const SizedBox(height: 3),
                  Text('Nível de energia: $energyLevel'),
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
    );
  }
}
