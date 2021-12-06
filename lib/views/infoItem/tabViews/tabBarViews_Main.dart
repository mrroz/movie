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

  var he = Get.height;

  return FadeInUp(
      child:Container(
        height:he*.6,
        child: ListView(
          children: [
            Container(
              //color: Colors.blue,
              height: he*.7,
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


