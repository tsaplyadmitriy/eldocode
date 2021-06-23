import 'package:eldorado/leads/profile_card_shimmer.dart';
import 'package:eldorado/leads/profile_short.dart';
import 'package:eldorado/leads/profile_short_card.dart';
import 'package:flutter/cupertino.dart';

class LeaderBoardListMock extends StatelessWidget{



  LeaderBoardListMock();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child:ListView.builder(

            itemCount: 10,

            itemBuilder: (BuildContext context, int index){

              return ProfileShimmerCard(index);
            }));
  }



}