import 'package:eldorado/leads/profile_short.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants.dart';
import '../../styles.dart';
import '../goal.dart';

class LoadedGoalCard extends StatelessWidget {
  Goal goal;

  LoadedGoalCard(this.goal);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Shimmer.fromColors(
        direction: ShimmerDirection.ltr,
          period: Duration(milliseconds: 4000),
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
      Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
             ),
          height: 240,
          child: Container(
              padding: EdgeInsets.only(top: 15, left: 5, right: 0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "План на сегодня",
                      style: TextStyles.cardPrice
                          .copyWith(fontSize: 24, letterSpacing: 0,color: Colors.white,fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      margin: EdgeInsets.only(left: 0, right: 10),
                      child: CircularPercentIndicator(
                        radius: 85.0,
                        lineWidth: 12.0,
                        percent: (goal.revenue / goal.plannedRevenue),
                        center: new Text(
                            ((goal.revenue / goal.plannedRevenue) * 100)
                                    .toInt()
                                    .toString() +
                                " %",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w800),),
                        progressColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.8),
                        //arcBackgroundColor: Colors.white,
                        header: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Дневной оборот,\n руб.",
                            textAlign: TextAlign.center,
                            style:
                                TextStyles.titleListHomeBold.copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),
                          ),
                        ),
                        footer: Container(
                          margin: EdgeInsets.only(top: 10),
                          child:
                              Text("${goal.revenue} из ${goal.plannedRevenue}",style: TextStyles.titleListHome.copyWith(fontSize: 15,color: Colors.white),),
                        ),
                      )),
                  Container(
                      //  margin: EdgeInsets.on(horizontal: 12),
                      child: CircularPercentIndicator(
                        radius: 85.0,
                        lineWidth: 12.0,
                    percent: (goal.acessoires / goal.plannedAccessoires),
                    center: new Text(
                        ((goal.acessoires / goal.plannedAccessoires) * 100)
                                .toInt()
                                .toString() +
                            " %",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w800)),
                        progressColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.8),
                    header: Container(
                      margin: EdgeInsets.only(bottom: 22),
                      child: Text(
                        "Аксессуары",
                        textAlign: TextAlign.center,
                        style: TextStyles.titleListHomeBold.copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),
                      ),
                    ),
                    footer: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                          "${goal.acessoires} из ${goal.plannedAccessoires}",style: TextStyles.titleListHome.copyWith(fontSize: 15,color: Colors.white),),
                    ),
                  )),
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 10),
                      child: CircularPercentIndicator(
                        radius: 85.0,
                        lineWidth: 12.0,
                        percent: (goal.services / goal.plannedServices),
                        center: new Text(
                            ((goal.services / goal.plannedServices) * 100)
                                    .toInt()
                                    .toString() +
                                " %",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w800)),
                        progressColor: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.8),
                        header: Container(
                          margin: EdgeInsets.only(bottom: 22),
                          child: Text(
                            "Доп. услуги",
                            textAlign: TextAlign.center,
                            style:
                                TextStyles.titleListHomeBold.copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),
                          ),
                        ),
                        footer: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                              "${goal.services} из ${goal.plannedServices}",
                            style: TextStyles.titleListHome.copyWith(fontSize: 15,color: Colors.white),),
                        ),
                      )),
                ]),
              ])))
    ]);
  }
}
