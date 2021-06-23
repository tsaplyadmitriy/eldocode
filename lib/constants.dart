import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants{
   static Color primaryColor = Color(0xffc10230);

   static Map<int,Widget> levelIcons= {
      1:Icon(Icons.directions_walk_sharp,size: 30,color: Colors.amber,),
      2:Icon(Icons.directions_bike,size: 30,),
      3:Icon(Icons.motorcycle_outlined,size: 30,),
      4:Icon(Icons.directions_car_outlined,size: 30,),
      5:Icon(Icons.directions_boat_outlined,size: 30,),
      6:Icon(Icons.airplanemode_active,size: 30,),

   };


}