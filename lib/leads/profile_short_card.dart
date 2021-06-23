import 'package:eldorado/leads/profile_short.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants.dart';
import '../styles.dart';

class ProfileShortCard extends StatelessWidget {
  ProfileShort profileShort;
  int place;

  ProfileShortCard(this.profileShort, this.place);

  Map<int,Widget> levelIcons= {
    1:Icon(Icons.directions_walk_sharp,size: 30,color: Colors.red[200],),
    2:Icon(Icons.directions_bike,size: 30,color:Colors.red[400],),
    3:Icon(Icons.motorcycle_outlined,size: 30,color:Colors.red[600],),
    4:Icon(Icons.directions_car_outlined,size: 30,color:Colors.red[700],),
    5:Icon(Icons.directions_boat_outlined,size: 30,color:Colors.red[800],),
    6:Icon(Icons.airplanemode_active,size: 30,color:Colors.red[900],),

  };
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              place <= 2
                  ? Shimmer.fromColors(
                      period: Duration(milliseconds: 3000),

                      // Wrap your widget into Shimmer.
                      baseColor: place == 0
                          ? Colors.yellow[900]
                          : place == 1
                              ? Colors.yellow[800]
                              : place == 2
                                  ? Colors.yellow[700]
                                  : Colors.white,
                      highlightColor: place == 0
                          ? Colors.yellow[700]
                          : place == 1
                              ? Colors.yellow[600]
                              : place == 2
                                  ? Colors.yellow[500]
                                  : Colors.white,
                      // (place == 0)
                      //     ? Colors.yellow
                      //     : (place == 1)
                      //     ? Colors.grey
                      //     : (place == 2)
                      //     ? Colors.brown
                      //     : Colors.transparent,
                      child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: Container(
                            decoration: BoxDecoration(
                              //color:
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 35,
                            height: 35,
                            child: Center(
                                child: Text(
                              (place + 1).toString(),
                              style: TextStyles.descriptionName.copyWith(
                                  letterSpacing: 0,
                                  fontSize: place == 0
                                      ? 35
                                      : place == 1
                                          ? 30
                                          : place == 2
                                              ? 25
                                              : 20),
                            ))),
                      ))
                  : Container(
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            //color:
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: 35,
                          height: 35,
                          child: Center(
                              child: Text(
                            (place + 1).toString(),
                            style: TextStyles.descriptionName.copyWith(
                                letterSpacing: 0,
                                fontSize: place == 0
                                    ? 35
                                    : place == 1
                                        ? 30
                                        : place == 2
                                            ? 25
                                            : 20),
                          ))),
                    ),
              Container(
                  //margin: EdgeInsets.only(top: 5),
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        profileShort.name,
                        style: TextStyles.descriptionPrice.copyWith(letterSpacing: 0),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        profileShort.position,
                        textAlign: TextAlign.left,
                      )
                    ],
                  )
                ],
              ))
            ]),
            // SizedBox(width: 20,),
            Container(
                margin: EdgeInsets.only(right: 15),
                child:

    Row(children:[Text(

    profileShort.level>=1000?
    (profileShort.level/1000).toStringAsFixed(1).toString()+"k":

    profileShort.level.toString(),
    softWrap:false,
    style: TextStyles.cardPrice.copyWith(
    fontSize: 22,
    letterSpacing: 0,
    color: Colors.black,
    fontWeight: FontWeight.w800),
    ),
    SizedBox(width: 5,),
    Icon(CupertinoIcons.bolt_fill,color: Colors.yellow,),])
               )
          ]),
        ));
  }
}
