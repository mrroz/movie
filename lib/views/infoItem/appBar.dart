import 'package:flutter/material.dart';

import 'infoItem_main.dart';

appbar(wi) {

  return Container(
    height: wi*.2,
    // color: Colors.orangeAccent,
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(
          //  color: Colors.red,
          width: wi*.2,
          height: wi*.18,
          child: topIcon_of__appbar(wi,Icons.arrow_back_ios_sharp),
        ),

        Container(
          //color: Colors.blue,
          width: wi*.3,
          height: wi*.18,
          child: Row(
            children: [
              Expanded(child: topIcon_of__appbar(wi,Icons.bookmark_border)),
              Expanded(child: topIcon_of__appbar(wi,Icons.more_vert)),
            ],
          ),
        ),

      ],
    ),
  );
}

topIcon_of__appbar(wi, IconData icon) {

  return Icon(
      icon,
      color: Colors.white70,
      size: wi*.1);
}
