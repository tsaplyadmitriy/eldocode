import 'package:eldorado/goals/good.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles.dart';


class GoodCard extends StatelessWidget{


  Good good;
  GoodCard(this.good);
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        //  height: 70,
        // width: 150,
        decoration: BoxDecoration(
          color: Color(0xffb33efc),
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
                      good.brand,
                      style: TextStyles.cardPrice.copyWith(
                          fontSize: 20,
                          letterSpacing: 0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      good.model,
                      style: TextStyles.cardPrice.copyWith(
                          fontSize: 18,
                          letterSpacing: 0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin:EdgeInsets.only(top:5),
                        child:Text(
                          good.type,
                          textAlign: TextAlign.start,
                          style: TextStyles.cardPrice.copyWith(
                              fontSize: 14,
                              letterSpacing: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                )
              ],
            ),
            Row(children:[Text(
              good.exp.toString(),
              style: TextStyles.cardPrice.copyWith(
                  fontSize: 22,
                  letterSpacing: 0,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(width: 5,),
            Icon(CupertinoIcons.bolt_fill,color: Colors.yellow,),])
          ],
        ));
  }



}