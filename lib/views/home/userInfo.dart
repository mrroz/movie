// ignore_for_file: file_names


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User extends StatelessWidget {
   User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
     // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          Padding(
            padding: EdgeInsets.all(Get.width*.04),
            child: Text('Hi Morteza',style: TextStyle(color: Colors.white,fontSize: Get.width*.06,fontWeight: FontWeight.w800),),
          ),

          Padding(
            padding:  EdgeInsets.all(Get.width*.01),
            child: CircleAvatar(backgroundColor: Colors.black54,radius: Get.width*.08,
            backgroundImage:ExactAssetImage('assets/images/tom1.jpg')
              ,),
          ),

        ],
      ),
    );
  }
}
