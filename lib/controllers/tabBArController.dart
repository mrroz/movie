import 'package:flutter/material.dart';
import 'package:get/get.dart';

class tabBarController extends GetxController with SingleGetTickerProviderMixin {
  TabController? tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 3);
    super.onInit();
  }
}
