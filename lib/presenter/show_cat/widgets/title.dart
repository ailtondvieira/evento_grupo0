import 'package:evento001/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Get.textTheme.bodyText1!.copyWith(
        fontSize: 25,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SubtitleWidet extends StatelessWidget {
  const SubtitleWidet({Key? key, required this.subtitle}) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Get.textTheme.bodyText1!.copyWith(
        fontSize: 20,
      ),
    );
  }
}
