import 'package:eldorado/constants.dart';
import 'package:eldorado/goals/cards/article_card.dart';

import 'cards/star_good_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'goal.dart';
import 'good.dart';
import 'cards/loaded_goal_card.dart';

class LoadedGoalScreen extends StatelessWidget {
  Goal goal;

  LoadedGoalScreen(this.goal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor:Constants.primaryColor,
      body: Container(child: SingleChildScrollView(

          physics: BouncingScrollPhysics(),
          child:Column(children: [


        LoadedGoalCard(goal),
        StarGoodCard([Good("Samsung","Сматрфон","Galaxy S12",100)
            ,Good("Apple","Сматрфон","iPhone 13",200)]),
        ArticleCard()


      ]))),
    );
  }
}
