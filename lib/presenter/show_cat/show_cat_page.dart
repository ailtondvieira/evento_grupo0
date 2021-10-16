import 'package:evento001/presenter/show_cat/widgets/description_widget.dart';
import 'package:evento001/presenter/show_cat/widgets/title.dart';
import 'package:evento001/theme/app_colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './show_cat_controller.dart';

class ShowCatPage extends GetView<ShowCatController> {
  const ShowCatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('ShowCatPage'),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const BackButton(),
                Text(
                  'Persian',
                  style: Get.textTheme.headline1!.copyWith(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .85,
                  child: const DescriptionWidget(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .85,
                  color: AppColors.primaryColor,
                  child: Image.network(
                    'https://cdn2.thecatapi.com/images/132.jpg',
                    height: 200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/*
Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://cdn2.thecatapi.com/images/131.jpg',
                    height: 250,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TitleWidget(
                    title: 'Size ',
                  ),
                  SubtitleWidet(subtitle: '10Kg'),
                  Divider(),
                  TitleWidget(
                    title: 'Dog Friendly ',
                  ),
                  SubtitleWidet(subtitle: '90%'),
                  Divider(),
                  TitleWidget(
                    title: 'Healtht Issues ',
                  ),
                  SubtitleWidet(subtitle: 'Alergies, blindess'),
                  Divider(),
                  TitleWidget(
                    title: 'Gender ',
                  ),
                  SubtitleWidet(subtitle: 'Male'),
                ],
              ),
            )
*/