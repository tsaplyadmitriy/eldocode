import 'package:eldorado/constants.dart';
import 'package:eldorado/progress/user_progress.dart';
import 'package:eldorado/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';

class UserProfileCard extends StatelessWidget{

  int points;
  int bonus;
  int index;

  bool leftNav;
  bool rightNav;

  List<String> month = ["Март","Апрель","Май","Июнь"];




  UserProfileCard(this.points, this.bonus,this.leftNav,this.rightNav,this.index);

  @override
  Widget build(BuildContext context) {

    return Stack(children: [



      if(!rightNav)Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          period: Duration(milliseconds: 4000),
          baseColor:  Constants.primaryColor,
          highlightColor: Color(0xffe30237),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            height: 120,
            width: MediaQuery.of(context).size.width,
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
      Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: (!rightNav)?Colors.transparent:Constants.primaryColor.withOpacity(0.85),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: Container(
              padding: EdgeInsets.only(top: 15, left: 5, right: 0),
              child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Добрый день, Александр",
                      style: TextStyles.cardPrice
                          .copyWith(fontSize: 18, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Сейчас у вас ${points.toString()}",
                      style: TextStyles.cardPrice
                          .copyWith(fontSize: 18, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w700),
                    ),

    SizedBox(width: 5,),
    Icon(CupertinoIcons.bolt_fill,color: Colors.yellow,)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "и уже ",
                      style: TextStyles.cardPrice
                          .copyWith(fontSize: 18, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${6500}",
                      style: TextStyles.cardPrice
                          .copyWith(fontSize: 22, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w700),
                    ),

                    //SizedBox(width: 5,),
                    Icon(CupertinoIcons.money_rubl,color: Colors.white,size: 24,),
                    Text(
                      "премии!",
                      style: TextStyles.cardPrice
                          .copyWith(fontSize: 18, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),


              ])))
    ]);
  }


}