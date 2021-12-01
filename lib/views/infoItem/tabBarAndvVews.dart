import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infoItem_main.dart';

tabBar(wi, ) {
  final controller = Get.put(HomeController());

  return Container(
      width: 250,
      height: wi*.2,
      // color: Colors.orange,
      child:FadeInUp(
        child: TabBar(
          //  indicatorColor: Colors.orangeAccent,
          controller: controller.tabController,
          indicator:UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal: wi*.04,vertical: wi*.012),
            borderSide: BorderSide(color: Colors.orange, width: wi*.012),),
          tabs: [


            FadeInLeft(
                duration: Duration(seconds: 1),
                child: tabBarItem('info',wi)),
            FadeInUp(
                duration: Duration(seconds: 1),
                child: tabBarItem('Review',wi)),
            FadeInRight(
                duration: Duration(seconds: 1),
                child: tabBarItem('Awards',wi)),


          ],
        ),
      )
  );
}

tabBarItem(String s,wi) {
  return Text(s,style: TextStyle(
      color: Colors.white,fontSize: wi*.05,fontWeight: FontWeight.bold),);
}

tabBarView(wi) {
  final controller = Get.put(HomeController());

  return FadeInUp(
    child: Container(
      height: wi*.9,
      child: TabBarView(
        controller: controller.tabController,
        children: <Widget>[
          Container(color: Colors.orangeAccent,height: 25,width: 25,),
          Container(color: Colors.deepOrange,height: 25,width: 25,),
          Container(color: Colors.pink,height: 25,width: 25,),

        ],
      ),
    ),
  );
}

