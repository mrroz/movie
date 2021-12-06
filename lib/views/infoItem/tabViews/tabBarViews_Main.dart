import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/tabBArController.dart';
import 'package:movie2/views/infoItem/tabViews/review.dart';
import '../infoItem_main.dart';
import 'awards.dart';
import 'info.dart';


tabBarView(wi) {
  final controller = Get.put(tabBarController());

  return FadeInUp(
      child:Container(
        height: wi*.9,
        child: ListView(
          children: [
            Container(
              height: wi*.9,
              child: TabBarView(
                controller: controller.tabController,
                children: <Widget>[

                  infoTab(wi),
                  review(),
                  awards(),

                ],
              ),
            )
          ],
        ),
      )
  );
}


