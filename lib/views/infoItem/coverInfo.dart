import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


titleMovie(wi) {

  var titleStyle =TextStyle(color: Colors.white,fontSize: wi*.08,fontWeight: FontWeight.bold);

  return Container(
    //color: Colors.white54,
      height: wi*.11,
      child: Padding(
        padding: EdgeInsets.only(left: wi*.045),
        child: Text('The Nun',style: titleStyle,),
      ));
}

coverInfo(wi) {

  return Stack(
    children: [

      Container(
        // color: Colors.red,
        height: wi*.7,
        child: Row(
          children: [

            Expanded(
                flex: 4,
                child: FadeInLeft(child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      image:DecorationImage(fit: BoxFit.cover,
                          image: ExactAssetImage('assets/images/Apex.jpg'))),


                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: wi*.09,
                      width: wi*.18,
                      color: Colors.white60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.star,size:  wi*.06,),
                          Text('6.5',style: TextStyle(fontSize: wi*.04,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  )
                  ,))
            ),

            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(bottom:wi*.19),
                  //color: Colors.blue,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        time_coverInfo(wi,'1h 5m'),
                        ganer_coverInfo(wi,'Mystery/Thriller'),
                        tags_coverInfo(wi),
                        rateCard_coverInfo(wi,'5.8/10','imbd'),
                        rateCard_coverInfo(wi,'26%','rotten'),

                      ],),
                  ),
                )),

          ],
        ),
      ),

      Container(
        height: wi*.12,
        width:wi*.4 ,
        margin: EdgeInsets.only(top: wi*.575,left: wi*.4),
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_arrow_rounded,color: Colors.black87,size: wi*.09,),
            Text('Watch Trailer',style: TextStyle(color: Colors.black87,fontSize: wi*.04,fontWeight: FontWeight.bold),),
          ],
        ),

      )


    ],
  );
}

rateCard_coverInfo(wi, String s, String t) {
  return Container(
    margin: EdgeInsets.only(left: wi*.025,top: wi*.03),
    width: wi*.31,
    height: wi*.09,
    color: Colors.grey.shade800,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Center(child: Text(s,style: TextStyle(color: Colors.white54,fontSize: wi*.04,fontWeight: FontWeight.bold),))),
        Expanded(child: Center(child: Text(t,style: TextStyle(color: Colors.white54,fontSize: wi*.04,fontWeight: FontWeight.bold)))),
      ],
    ),

  );
}


tags_coverInfo(wi) {

  return Wrap(

    children: [
      tag_coverInfo(wi,'Full Hd'),
      tag_coverInfo(wi,'4D')
    ],
  );
}


ganer_coverInfo(wi, String s) {

  return FadeInRight(
    child: Padding(
      padding:  EdgeInsets.all(wi*.02),
      child: Text(s,style: TextStyle(color: Colors.orange,fontSize: wi*.04),),
    ),
  );
}


time_coverInfo(wi, String s) {

  return FadeInDown(child: Padding(
    padding:  EdgeInsets.all(wi*.02),
    child: Text(s,style: TextStyle(color: Colors.white54,fontSize: wi*.05),),
  ));
}


tag_coverInfo(wi, String s) {

  return FadeInRight(child: Container(
    margin: EdgeInsets.only(left: wi*.025),
    width: wi*.15,
    height:wi * .07,
    decoration: BoxDecoration(
      borderRadius:
      BorderRadius.circular(4),
      border: Border.all(
          color: Colors.orangeAccent
              .withOpacity(.4)),
    ),

    child: Center(
        child: Text(s,
            style: TextStyle(
                fontSize:
                wi* .04,
                color:
                Colors.orange,
                fontWeight:
                FontWeight
                    .w900))),
  ));
}


rate(wi) {

  return  Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.only(right: wi*.13 ),
      width: wi*.18,
      height: wi*.1,
      child: Container(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star,color: Colors.black,size:wi*.065 ,),
            Text('Watch Trailer',style: TextStyle(color: Colors.black,fontSize:wi*.05,fontWeight: FontWeight.w700 ),)
          ],),
      ),
    ),
  );
}


