

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class categoriesItems extends StatelessWidget {
  categoriesItems({Key? key}) : super(key: key);

  var select =0.obs ;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Container(
        margin: EdgeInsets.only(bottom: Get.width*.01,top: Get.width*.01 ),
        height: Get.width*.12,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                print(index);
                print('select : $select');

                select.value = index;

                print(select.value);



              },
              child: Container(
                margin: EdgeInsets.only(left: Get.width*.015,right: Get.width*.015),
                width: Get.width*.21,
                height:Get.width*.075 ,
                decoration: BoxDecoration(
                    color:index == 0? Colors.amber.shade800:Colors.blueGrey.shade900,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text('Action',style: TextStyle(fontSize: Get.width*.045,color: Colors.white),)),
              ),
            );
          },
        ),
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


