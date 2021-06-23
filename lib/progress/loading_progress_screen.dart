import 'package:eldorado/progress/cards/progress_card.dart';
import 'package:eldorado/progress/shimmer_cards/progress_card_shimmer.dart';
import 'package:eldorado/progress/user_progress.dart';
import 'package:flutter/cupertino.dart';

class LoadingProgressScreen extends StatelessWidget{



  LoadingProgressScreen();

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
     ProgressCardShimmer()


    ],),);
  }




}