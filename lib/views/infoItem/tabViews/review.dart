import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/actorsController.dart';

review() {
  actorsController actorsCont = Get.put(actorsController());

  var wi = Get.width;
  var he = Get.height;
  var temp =
      'This component  is responsible for managing access to the underlying SQLite database. The abstract class contains the method signatures for querying the database which have to return a Future or Stream.';

  return Container(
    //color: Colors.orangeAccent,
    child: Obx(()=>ListView.builder(
      itemCount: actorsCont.topActor.length,
      itemBuilder: (context, index) {
        return FadeInUp (
            child: Container(
          width: wi * .9,
          margin: EdgeInsets.all(wi * .02),
          color: Colors.white24.withOpacity(.118),
          child: Padding(
            padding: EdgeInsets.all(wi * .02),
            child: Column(
              children: [
                Container(
                    height: wi * .13,
                    margin: EdgeInsets.only(top: wi * .01, bottom: wi * .03),
                    //color: Colors.brown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              // color:Colors.red,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  radius: wi * .08,
                                  backgroundImage: ExactAssetImage(actorsCont.topActor[index]['image']),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: wi * .02),
                                child: Text(
                                  'morteza Roozbehi',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                )),
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(right: wi * .02),
                            child: Text(
                              '8/10',
                              style: TextStyle(color: Colors.white70),
                            )),
                      ],
                    )),
                Text(temp,style:TextStyle(color: Colors.white) ,),
              ],
            ),
          ),
        ));
      },
    )),
  );
}
