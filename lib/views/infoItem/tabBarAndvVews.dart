


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
                Container(color: Colors.deepOrange,height: 25,width: 25,),
                Container(color: Colors.pink,height: 25,width: 25,),

              ],
            ),
          )
        ],
      ),
    )
    );

}



infoTab(wi){
  var tempText ='A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded Earth. A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded EarthBut the being takes a liking to Earth and decides to protect it.';

  return Container(
    color: Colors.orangeAccent,
    height: wi*.05,
    //width: 25,
    child:ListView(
      children: [
        Container(
          margin: EdgeInsets.all(wi*.02),
          height: wi*.089,
          width: wi*.9,
          color: Colors.deepOrange,
          child: Text('StoryLine',style: TextStyle(color: Colors.white,fontSize: wi*.06),),
        ),
        Container(
          margin: EdgeInsets.all(wi*.02),
          color: Colors.pink,
          // height:more.value? geDescMore : geDesc,
          height: wi*.3,
          width: wi*.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  tempText,style: TextStyle(color: Colors.white,fontSize: wi*.045),
                  maxLines: 4,
                  overflow:TextOverflow.ellipsis
              ),
              GestureDetector(
                onTap: (){
                  //     more.value =true;
                },
                child: Text(
                  'More ...',style: TextStyle(color: Colors.white,fontSize: wi*.05,fontWeight: FontWeight.bold),

                ),
              ),


            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(wi*.02),
          height: wi*.5,
          width: wi*.9,
          color: Colors.deepOrange,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: wi*.06,horizontal: wi*.02),
                   width: wi*.4,
                  color: Colors.blue,
                  child: Center(child: Text('$index')),
                );
              },
          ),
        ),
      ],
    ),
  );
}

