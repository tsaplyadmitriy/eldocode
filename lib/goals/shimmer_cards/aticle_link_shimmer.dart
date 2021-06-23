import 'package:eldorado/goals/good.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles.dart';


class ArticleLinkCardShimmer extends StatelessWidget{



  ArticleLinkCardShimmer();
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        //  height: 70,
        // width: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "aaaaaaaaaaaaaaa",
                      style: TextStyles.cardPrice.copyWith(
                          fontSize: 16,
                          letterSpacing: 0,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),

                  ],
                ),

              ],
            ),
            Row(children:[Text(


              "1",
              softWrap:false,
              style: TextStyles.cardPrice.copyWith(
                  fontSize: 22,
                  letterSpacing: 0,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800),
            ),
              SizedBox(width: 5,),
              Icon(CupertinoIcons.bolt_fill,color: Colors.yellow,),])
          ],
        ));
  }



}