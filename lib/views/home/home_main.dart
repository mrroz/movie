
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/views/home/lastMovies.dart';
import 'package:movie2/views/home/trandingItems.dart';
import 'package:movie2/views/home/userInfo.dart';
import 'CategoriItems.dart';
import 'actors.dart';
import 'topActor.dart';


class Home extends StatelessWidget {
    Home({Key? key}) : super(key: key);



   @override
  Widget build(BuildContext context) {

     var _appBar = AppBar(

       centerTitle: true,
       title: Text('Movie land',style: TextStyle(fontSize: Get.width*.05),),
       actions: [
         Container(
           margin: EdgeInsets.only(right: Get.width*.03),
           child: Icon(Icons.search_sharp,size: Get.width*.075),
         )
       ],
       backgroundColor: Colors.black,
       leading:  Icon(Icons.menu ,size: Get.width*.075,),

     );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar:_appBar ,
      body: SafeArea(child: body()),
    );
  }


  body() {

    return ListView(

      children: [

        User(),

        CategoriTitle(),

        categoriesItems(),

        LatMovieTitle(),

        LastMovies(),

        TrendingTitle(),

        TrendingItems(),

        Actors(),

        TopActorTitle(),

        TopActor(),

      ],
    );
  }
 // tlg : @mr_roz
}

LatMovieTitle() {

  return Padding(
    padding:  EdgeInsets.all( Get.width*.03),
    child: Container(
      //margin: EdgeInsets.only(top: Get.width*.01,bottom: Get.width*.01),
      // color: Colors.blue,
      height: Get.width*.1,
      child: Text('Last Movies',style: TextStyle(color: Colors.white,fontSize: Get.width*.06),),
    ),
  );
}


 TrendingTitle () {

  return FadeInDown(
    child: SizedBox(
      height: Get.width*.14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [

          Padding(
            padding:  EdgeInsets.only(right:Get.width*.04,left:Get.width*.04),
            child: Center(child:  Text('Trending',style: TextStyle(fontSize:Get.width*.065,fontWeight: FontWeight.bold,color: Colors.white),)),
          ),

          Padding(
            padding:  EdgeInsets.only(right:Get.width*.04,left: Get.width*.04),
            child: Center(child:  Text('view all',style: TextStyle(fontSize: Get.width*.05,fontWeight: FontWeight.bold,color: Colors.orange),)),
          ),

        ],),
    ),
  );
}


 CategoriTitle() {
  return FadeInRight(
    child: Container(
      padding: EdgeInsets.only(left: Get.width*.026),
      // color: Colors.yellowAccent,
      height: Get.width*.09,
        child: Text('Categories',style: TextStyle(
            color: Colors.white,fontSize: Get.width*.06,
            fontWeight: FontWeight.w400,
        ),)),
  );
}


TopActorTitle() {
  return Container(
    height: Get.width*.1,
    //color: Colors.cyanAccent,
    child: Center(child: Text('Top actor of week',style: TextStyle(fontSize:Get.width*.05 ,color: Colors.amber),)),
  );
}
