

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class categoriesItems extends StatelessWidget {
  categoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.width*.01,top: Get.width*.01),
      height: Get.width*.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: Get.width*.015,right: Get.width*.015),
              width: Get.width*.21,
              height:Get.width*.075 ,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text('Action',style: TextStyle(fontSize: Get.width*.045,color: Colors.white),)),
            );
          },
      ),
    );
  }

  catItem(String s) {

    return Container(
      margin: EdgeInsets.only(left: Get.width*.015,right: Get.width*.015),
      width: Get.width*.21,
      height:Get.width*.075 ,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text(s,style: TextStyle(fontSize: Get.width*.045),)),
    );
  }
}


