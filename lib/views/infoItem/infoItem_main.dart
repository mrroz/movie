// import 'dart:html';

// ignore_for_file: camel_case_types, file_names

import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appBar.dart';
import 'coverInfo.dart';
import 'tabBarAndvVews.dart';

class infoItem extends StatelessWidget {
   infoItem({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var wi =  Get.width;

    return Scaffold(
      backgroundColor: Colors.black54,
      body: _body(wi),
    );
  }

}


_body(wi) {

  return ListView(
    children: [

      appbar(wi),
      titleMovie(wi),
      coverInfo(wi),
      tabBar(wi),
      tabBarView(wi),

    ],
  );
}




class HomeController extends GetxController with SingleGetTickerProviderMixin {
  TabController? tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 3);
    super.onInit();
  }
}


