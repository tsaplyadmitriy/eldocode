

import 'package:eldorado/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';
import '../good.dart';
import 'good_card_shimmer.dart';

class StarGoodCardShimmer extends StatelessWidget {


  StarGoodCardShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
          // Shimmer.fromColors(
          //     direction: ShimmerDirection.ltr,
          //     period: Duration(milliseconds: 4000),
          //     baseColor:  Color(0xff9b1fe8),
          //     highlightColor: Color(0xffab24ff),
          //     child: Container(
          //       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          //       height: 120,
          //
          //       decoration: BoxDecoration(
          //           color: Constants.primaryColor,
          //           borderRadius: BorderRadius.circular(20),
          //           boxShadow: [
          //             BoxShadow(
          //                 spreadRadius: 2,
          //                 color: Colors.grey.withOpacity(0.2),
          //                 blurRadius: 2)
          //           ]),
          //
          //
          //     )),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xff9b1fe8),
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
                              CupertinoIcons.sparkles,
                              color: Colors.yellow,
                              size: 35,
                            ))),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          "Звёздные товары",
                          style: TextStyles.cardPrice.copyWith(
                              fontSize: 18,
                              letterSpacing: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ])
                  ]),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context,index){
                    return GoodCardShimmer();
                  })

              // GoodCard(goods[0]),
              //  GoodCard(goods[0])
            ]),
          )
        ]));
  }
}
