import 'package:eldorado/leads/profile_short.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../styles.dart';

class ProfileShimmerCard extends StatelessWidget {

  int place;

  ProfileShimmerCard( this.place);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[

          Shimmer.fromColors(
      period: Duration(milliseconds: 3000),

      // Wrap your widget into Shimmer.
      baseColor: place==0?Color(0xfffff4b3):place==1?Color(0xfff3f2f2):place==2?Color(0xffe7dccb):Colors.white,
      highlightColor: place==0?Color(0xffFFD700):place==1?Color(0xffe0dddd):place==2?Color(0xffb08d57):Colors.white,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 2)
            ]),
        height: 100,
      ),
    ), Shimmer.fromColors(
              period: Duration(milliseconds: 3000),

              // baseColor: Colors.grey[200],
              // highlightColor: Colors.grey[350],
              // Wrap your widget into Shimmer.
              baseColor: place==0?Color(0xffFFD700):place==1?Color(0xffe0dddd):place==2?Color(0xffb08d57):Colors.grey[200],
               highlightColor: place==0?Color(0xffffd900):place==1?Color(0xffaaa1a1):place==2?Color(0xff9c7b49):Colors.grey[350],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 80,top: 30),
                width: 160,
                height: 25,




              )), Shimmer.fromColors(
              period: Duration(milliseconds: 3000),

              // baseColor: Colors.grey[200],
              // highlightColor: Colors.grey[350],
              // Wrap your widget into Shimmer.
              baseColor: place==0?Color(0xffFFD700):place==1?Color(0xffe0dddd):place==2?Color(0xffb08d57):Colors.grey[200],
              highlightColor: place==0?Color(0xffffd900):place==1?Color(0xffaaa1a1):place==2?Color(0xff9c7b49):Colors.grey[350],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 80,top: 60),
                width: 80,
                height: 20,




              )),
          Shimmer.fromColors(
              period: Duration(milliseconds: 3000),

              // baseColor: Colors.grey[200],
              // highlightColor: Colors.grey[350],
              // Wrap your widget into Shimmer.
              baseColor: place==0?Color(0xffFFD700):place==1?Color(0xffe0dddd):place==2?Color(0xffb08d57):Colors.grey[200],
              highlightColor: place==0?Color(0xffffd900):place==1?Color(0xffaaa1a1):place==2?Color(0xff9c7b49):Colors.grey[350],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 30,top: 35),
                width: 35,
                height: 35,




              )),
          Shimmer.fromColors(
              period: Duration(milliseconds: 3000),

              // baseColor: Colors.grey[200],
              // highlightColor: Colors.grey[350],
              // Wrap your widget into Shimmer.
              baseColor: place==0?Color(0xffFFD700):place==1?Color(0xffe0dddd):place==2?Color(0xffb08d57):Colors.grey[200],
              highlightColor: place==0?Color(0xffffd900):place==1?Color(0xffaaa1a1):place==2?Color(0xff9c7b49):Colors.grey[350],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 280,top: 30),
                width: 80,
                height: 50,




              )),]);
  }
}
