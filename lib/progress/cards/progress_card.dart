import 'dart:ui';
import 'dart:math' as math;

import 'package:eldorado/constants.dart';
import 'package:eldorado/progress/user_progress.dart';
import 'package:eldorado/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ProgressCard extends StatelessWidget {
  int points;
  int pointsPrev;
  int bonus;
  int bonusPrev;
  int index;

  bool leftNav;
  bool rightNav;

  List<_SalesData> data = [

  ];

  List<String> month = ["Март", "Апрель", "Май", "Июнь"];

  ProgressCard(this.points, this.pointsPrev, this.bonus, this.bonusPrev,
      this.leftNav, this.rightNav, this.index);

  @override
  Widget build(BuildContext context) {

    for (int i  = 0;i<12;i++){
      data.add(_SalesData(i.toString(), 4000+(i*950)));
    }
    for (int i  = 13;i<18;i++){
      data.add(_SalesData(i.toString(), 15000+(i*670)));
    }
    for (int i  = 25;i<30;i++){
      data.add(_SalesData(i.toString(), 18000+(i*980)));
    }
    return Stack(children: [
      Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          period: Duration(milliseconds: 4000),
          baseColor: Colors.white,
          highlightColor: Colors.white,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            height: 230,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(spreadRadius: 5, color: Colors.red, blurRadius: 5)
                ]),
          )),
      Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 230,
          width: MediaQuery.of(context).size.width,
          child: Container(
              padding: EdgeInsets.only(top: 15, left: 0, right: 0),
              child: Container(
                  margin: EdgeInsets.only(top: 0, left: 0, right: 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Прогресс за ${month[index]}",
                              style: TextStyles.cardPrice.copyWith(
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  color: Color(0xffe30237),
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 15, right: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "+ " + (points - pointsPrev).toString(),
                                  style: TextStyles.cardPrice.copyWith(
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  CupertinoIcons.bolt_fill,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "в этом месяце!",
                                  style: TextStyles.cardPrice.copyWith(
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 25, right: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.bolt_fill,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  (pointsPrev == 0)
                                      ? "100%"
                                      : "+" +
                                          (((points / pointsPrev) - 1) * 100)
                                              .toStringAsFixed(0) +
                                          " %",
                                  style: TextStyles.cardPrice.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 25, right: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.money_rubl_circle_fill,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "рост продаж на 37 %",
                                  style: TextStyles.cardPrice.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 0, left: 25, right: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.sparkles,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "5 звёздных товаров",
                                  style: TextStyles.cardPrice.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              topLeft: Radius.circular(30),
                                            )
                                            
                                          ),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height:  2.2*MediaQuery.of(context).size.height/3,
                                          
                                          child: Column(children: [
                                            Container(
                                              margin:EdgeInsets.only(top:25),
                                              child:

                                            Text(
                                              "Ваш прогресс за ${month[index]}",
                                              style: TextStyles.cardPrice.copyWith(
                                                  fontSize: 20,
                                                  letterSpacing: 0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800),
                                            ),


                                              ), Container(

                                                margin:EdgeInsets.symmetric(horizontal:20,vertical:10),
                                                child:Text(
                                              "Следите за своим прогрессом, узнавайте свои сильные и слабые места и становитесь лучшим!",

                                                  textAlign:TextAlign.center,
                                                  style: TextStyles.cardPrice.copyWith(
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w400),
                                            )),

                                              //Initialize the chart widget
                                              SfCartesianChart(
                                                  primaryXAxis: CategoryAxis(),
                                                  // Chart title
                                                  title: ChartTitle(text: 'Оборот за месяц'),
                                                  // Enable legend
                                                  legend: Legend(isVisible: false),

                                                  // Enable tooltip
                                                  tooltipBehavior: TooltipBehavior(enable: false),
                                                  series: <ChartSeries<_SalesData, String>>[
                                                    LineSeries<_SalesData, String>(
                                                        dataSource: data,
                                                        xValueMapper: (_SalesData sales, _) => sales.year,
                                                        yValueMapper: (_SalesData sales, _) => sales.sales,
                                                       // name: 'Sales',
                                                        // Enable data label
                                                        dataLabelSettings: DataLabelSettings(isVisible: false))
                                                  ]),



                                          ],),
                                        );
                                      });
                                },
                                child: Container(
                                    child: Text(
                                  "Подробнее",
                                  style: TextStyles.cardPrice.copyWith(
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ))),
                          ],
                        ),
                      ]))))
    ]);
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
