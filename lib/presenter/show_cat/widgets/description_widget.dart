import 'package:evento001/presenter/show_cat/widgets/title.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleWidget(
            title: 'Size ',
          ),
          SubtitleWidet(subtitle: '10Kg'),
          const Divider(),
          TitleWidget(
            title: 'Dog Friendly ',
          ),
          SubtitleWidet(subtitle: '90%'),
          const Divider(),
          TitleWidget(
            title: 'Healtht Issues ',
          ),
          SubtitleWidet(subtitle: 'Alergies, blindess'),
          const Divider(),
          TitleWidget(
            title: 'Gender ',
          ),
          SubtitleWidet(subtitle: 'Male'),
        ],
      ),
    );
  }
}
