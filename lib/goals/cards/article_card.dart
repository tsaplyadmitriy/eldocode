import 'package:eldorado/goals/cards/article_link_card.dart';
import 'package:eldorado/goals/cards/good_card.dart';

import 'package:eldorado/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';
import '../good.dart';

class ArticleCard extends StatelessWidget {



  ArticleCard();

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
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xff3366ff),
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
                        baseColor: Colors.blue,
                        highlightColor: Colors.blue[200],
                        child: Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            child: Icon(
                              CupertinoIcons.book_fill,
                              color: Colors.blue,
                              size: 30,
                            ))),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        margin: EdgeInsets.only(top: 15,left: 5),
                        child: Text(
                          "Обучение",
                          style: TextStyles.cardPrice.copyWith(
                              fontSize: 18,
                              letterSpacing: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ]),


                  ]),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                child:
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: 'Мы подобрали для тебя самые подходящие статьи чтобы становиться круче и успешнее',
                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 16,fontFamily: "HelveticeNeue",)),


                  ],
                ),
              )
                ,),
              ArticleLinkCard("Лучше чем Wylsa:\n как продавать смартфоны?",8),
              ArticleLinkCard("10 правил убеждения\n для продажника",5),
              // GoodCard(goods[0]),
              //  GoodCard(goods[0])
            ]),
          )
        ]));
  }
}
