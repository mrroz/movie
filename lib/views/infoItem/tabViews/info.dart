import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie2/controllers/actorsController.dart';

infoTab(wi){
  var tempText ='A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded Earth. A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded EarthBut the being takes a liking to Earth and decides to protect it.';
  actorsController actorsCont = Get.put(actorsController());

  return FadeInUp(
    child: Container(
     // color: Colors.orangeAccent,
      height: wi*.05,
      //width: 25,
      child:ListView(
        children: [
          Container(
            margin: EdgeInsets.all(wi*.02),
            height: wi*.1,
            width: wi*.9,
            // color: Colors.deepOrange,
            child: Text('StoryLine',style: TextStyle(color: Colors.white,fontSize: wi*.06),),
          ),
          Container(
            margin: EdgeInsets.all(wi*.02),
             //color: Colors.pink,
            // height:more.value? geDescMore : geDesc,
            height: wi*.4,
            width: wi*.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    tempText,style: TextStyle(color: Colors.white,fontSize: wi*.04),
                    maxLines: 6,
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
          Obx(()=>Container(
            margin: EdgeInsets.all(wi*.01),
            height: wi*.4,
            width: wi*.9,
            // color: Colors.deepOrange,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: actorsCont.actors.length,
              itemBuilder: (context, index) {
                return FadeInLeftBig(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(image: ExactAssetImage(actorsCont.actors[index]['image']),fit: BoxFit.cover)
                    ),
                    margin: EdgeInsets.symmetric(vertical: wi*.01,horizontal: wi*.015),
                    width: wi*.4,
                    child: Container(
                      //height: wi*.02,
                      //color:Colors.purple,
                      margin: EdgeInsets.symmetric(vertical: 1,horizontal: 1),
                      width: wi*.2,
                      child: Text('${actorsCont.actors[index]['name']}',style: TextStyle(color: Colors.white, fontSize: wi*.05,backgroundColor: Colors.black45),),
                    ),
                  ),
                );
              },
            ),
          )),
        ],
      ),
    ),
  );
}
