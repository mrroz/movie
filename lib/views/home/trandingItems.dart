// ignore: file_names
// ignore_for_file: file_names, must_be_immutable

// import 'dart:html';

//import 'dart:html';

// import 'dart:html';
// import 'dart:html';
// import 'dart:html';
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/trendingController.dart';

class TrendingItems extends StatelessWidget {

  TrendingItems({Key? key}) : super(key: key);
  trending_controller trendingItems = Get.put(trending_controller());


  @override
  Widget build(BuildContext context) {
    var wi = Get.width;
    return FadeInLeftBig(
      duration:const Duration(seconds: 1),
      child: Container(
        height: Get.width*.30,
        width: Get.width,
     //   color: Colors.blue,

        child: Stack(
          children: [
            Obx(() => Padding(
              padding:  EdgeInsets.all(Get.width*.007),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingItems.trendItems.length,
                itemBuilder: (context, index) {
                  var trends =trendingItems.trendItems[index];
                  return Container(
                    margin: EdgeInsets.all(wi*.01),
                    //  color: Colors.amber,
                    width: wi*.7,
                    child: Stack(
                      children: [

                        infoPanel(trends,wi),
                        rate(trends,wi),
                        rate(trends,wi),

                      ],
                    ),
                  );
                },
              ),
            )),
            swip(),
          ],
        ),
      ),
    );
  }


}



swip() {

  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding:  EdgeInsets.only( right: Get.width*.02),
      child: FadeInLeftBig(
        child: CircleAvatar(
          child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white.withOpacity(.3),),
          backgroundColor: Colors.orange.withOpacity(.17),
        ),
      ),
    ),
  );
}


infoPanel(trends,wi) {

//  var wi = Get.width;

  return  Container(

    // color: Colors.purple,
    child: Row(
      children: [
        Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(image: ExactAssetImage(trends['image']),fit: BoxFit.cover,)
              ),

            )),
        Expanded(
            flex: 6,
            child: Container(

                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: FadeInRight(
                            child: Container(
                              //color: Colors.yellow,

                              margin: EdgeInsets.only(left: wi * .02),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        children: [
                                          Text(
                                            trends['name'],
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                color: Colors.white,
                                                fontSize:
                                                wi * .055),
                                          ),
                                          Text(
                                            trends['time'],
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w700,
                                                color: Colors.tealAccent
                                                    .withOpacity(.4),
                                                fontSize:
                                                wi * .042),
                                          ),
                                        ],
                                      )),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.bookmark_border,color: Colors.white54,)),

                                ],
                              ),
                            ))),
                    Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FadeInLeft(
                            child: Container(
                              // color: Colors.pinkAccent,
                              margin: EdgeInsets.only(left: wi*.02),

                              child: Text(
                                trends['genre'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(.4),
                                    fontSize: wi * .045),
                              ),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.all(wi * .01),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Container(
                                    height:wi * .07,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors.orangeAccent
                                              .withOpacity(.4)),
                                    ),

                                    child: Center(
                                        child: Text('Full Hd',
                                            style: TextStyle(
                                                fontSize:
                                                Get.width * .04,
                                                color:
                                                Colors.orange,
                                                fontWeight:
                                                FontWeight
                                                    .w900))),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Container(
                                    height: wi * .07,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors.orangeAccent
                                              .withOpacity(.4)),
                                    ),

                                    child: Center(
                                        child: Text('4K',
                                            style: TextStyle(
                                                fontSize:
                                                wi * .04,
                                                color:
                                                Colors.orange,
                                                fontWeight:
                                                FontWeight
                                                    .w900))),

                                  )),
                            ],
                          ),
                        )),
                  ],
                ))),
      ],
    ),
  ) ;
}



rate(trends,wi) {

  return  Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.only(right: wi*.13 ),
      width: Get.width*.15,
      height: Get.width*.07,
      child: Container(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star,color: Colors.black,size:wi*.065 ,),
            Text(trends['rate'],style: TextStyle(color: Colors.black,fontSize:wi*.05,fontWeight: FontWeight.w700 ),)
          ],),
      ),
    ),
  );
}
