// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/actorsController.dart';

class TopActor extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   TopActor({Key? key}) : super(key: key);
   actorsController actorsCont = Get.put(actorsController());


   @override
  Widget build(BuildContext context) {

     print(TopActor);
    return Container(
      height:Get.width*.5,
      child: Stack(children: [

        SizedBox(
          height:Get.width*.5,
          child: Stack(
            children: [

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image:ExactAssetImage('assets/images/top.jpg'),fit: BoxFit.cover)
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.black45,Colors.black54,Colors.black87.withOpacity(.9)])
                ),
              ),
            ],
          ),
        ),
        
        FadeInLeftBig(
          duration: Duration(seconds: 3),
          child: Container(
            child: ListView.builder(
              reverse: true,
              itemCount: actorsCont.topActor.length,
              scrollDirection: Axis.horizontal,
                itemBuilder:(context, index){
                  var top = actorsCont.topActor[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      margin: EdgeInsets.only(right:Get.width*.03),
                      child: CircleAvatar(
                        backgroundImage:ExactAssetImage(top['image']) ,
                        radius: Get.width*.15,
                        backgroundColor: Colors.cyanAccent,
                      ),
                    ),
                    Center(child: Text(top['name'],style: TextStyle(backgroundColor: Colors.black87,color: Colors.white),)),

                  ],);
                },
            ),
          ),
        ),



      ],),
    );
  }
}
