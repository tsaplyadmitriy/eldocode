import 'package:eldorado/leads/profile_short.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';
import '../../styles.dart';

class GoalShimmerCard extends StatelessWidget {



  GoalShimmerCard();

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Shimmer.fromColors(
              direction: ShimmerDirection.ltr,
              period: Duration(milliseconds: 1000),
              baseColor:  Constants.primaryColor,
              highlightColor: Color(0xffe30237),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 240,
                decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2)
                    ]),
              )),

          Shimmer.fromColors(
              period: Duration(milliseconds: 3000),

              // baseColor: Colors.grey[200],
              // highlightColor: Colors.grey[350],
              // Wrap your widget into Shimmer.
              baseColor: Colors.grey[200],
              highlightColor:Colors.grey[350],
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 68,top: 25),
                width: 260,
                height: 25,
                child:  Text(
                  "План на сегодня",
                  style: TextStyles.cardPrice
                      .copyWith(fontSize: 24, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w900),
                ),




              )),

          Shimmer.fromColors(
              direction: ShimmerDirection.ltr,
              period: Duration(milliseconds: 1000),
              baseColor:  Color(0xffb1022b),
              highlightColor: Constants.primaryColor,
              child: Container(
                margin: EdgeInsets.only(left: 28,top: 65),
                height:160,
                width: 340,
                decoration: BoxDecoration(
                    color: Color(0xffb1022b),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2)
                    ]),
              )),

         ]);
  }
}
