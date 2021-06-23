import 'dart:ui';

import 'package:eldorado/goals/cards/good_card.dart';

import 'package:eldorado/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';

class CompetitionCard extends StatelessWidget {
  int total;
  int current;

  CompetitionCard(this.current, this.total);
  double _sigmaX = 1.0; // from 0-10
  double _sigmaY = 2.0; // from 0-10
  double _opacity = 5.1; // from 0-1.0
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
      Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          period: Duration(milliseconds: 4000),
          baseColor:  Constants.primaryColor,
          highlightColor: Color(0xffe30237),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            height: 190,

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
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        //height: 120,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    period: Duration(milliseconds: 3000),
                    baseColor: Colors.yellow,
                    highlightColor: Colors.yellow[200],
                    child: Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Icon(
                          CupertinoIcons.star_fill,
                          color: Colors.yellow,
                          size: 25,
                        ))),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 5),
                        child: Text(
                          "Приглашение на\nЭльдоФест",
                          textAlign: TextAlign.start,
                          style: TextStyles.cardPrice.copyWith(
                              fontSize: 18,
                              letterSpacing: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(top: 16, left: 75),
                        child: Text(
                          "Подробнее",
                          textAlign: TextAlign.start,
                          style: TextStyles.cardPrice.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              letterSpacing: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ]),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 25),
                  child: LinearPercentIndicator(
                    width: 250.0,
                    lineHeight: 20.0,
                    percent: current / total,
                    progressColor: Colors.yellow,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "${(total >= 1000 ? (total / 1000).toStringAsFixed(0).toString() + "k" : total)}",
                      style: TextStyles.cardPrice.copyWith(
                          fontSize: 18,
                          letterSpacing: 0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  margin: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Icon(
                    CupertinoIcons.bolt_fill,
                    color: Colors.yellow,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(



                  children: [

                  ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                      child:Container(

                        margin: EdgeInsets.only(top: 30,right: 5),
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellow[400],
                              onPrimary: Colors.yellow[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Container(
                                alignment: Alignment.center,
                                width: 180,
                                height: 50,
                                child: Text(
                                  "ПОЛУЧИТЬ",
                                  style: TextStyles.cardPrice.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ))),
                      )),Container(
                      decoration: BoxDecoration(


                      ),
                      alignment:Alignment.center,
                      margin: EdgeInsets.only(top: 30),
                      child: Icon(Icons.lock,size: 40,color: Colors.white,),),
                ],
                alignment: Alignment.center,
                )

              ])

          // GoodCard(goods[0]),
          //  GoodCard(goods[0])
        ]),
      )
    ]));
  }
}
