import 'package:eldorado/goals/shimmer_cards/article_card_shimmer.dart';

import 'cards/star_good_card.dart';
import 'shimmer_cards/star_good_card_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'goal.dart';
import 'shimmer_cards/goal_card_shimmer.dart';

class LoadingGoalScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: SingleChildScrollView(child:Column(
          children: [
            Container(
                child: Column(children: [
                  GoalShimmerCard(),
                  StarGoodCardShimmer(),
                  ArticleCardShimmer()
                ],))


          ],
        ),
    ))
    );
  }


}