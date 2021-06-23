import 'package:eldorado/leads/profile_short.dart';
import 'package:eldorado/leads/profile_short_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LeaderBoardList extends StatelessWidget{



  List<ProfileShort> list;
  LeaderBoardList(this.list,this._scrollController);
  ItemScrollController _scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child:ListView.builder(
            physics: BouncingScrollPhysics(),
      itemCount: list.length,

        itemBuilder: (BuildContext context, int index){

          return ProfileShortCard(list[index],index);
        }));
  }
  
  
  
}