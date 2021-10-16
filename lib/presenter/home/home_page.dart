import 'package:evento001/presenter/home/home_controller.dart';
import 'package:evento001/presenter/home/widgets/body_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyHome(),
    );
  }
}
