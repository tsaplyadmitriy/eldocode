import 'package:eldorado/progress/cards/progress_card.dart';
import 'package:eldorado/progress/cards/user_profile_card.dart';
import 'package:eldorado/progress/progress_bloc.dart';
import 'package:eldorado/progress/progress_event.dart';
import 'package:eldorado/progress/progress_state.dart';
import 'package:eldorado/progress/user_progress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cards/competition_card.dart';

class LoadedProgressScreen extends StatelessWidget {
  UserProgress userProgress;
  ProgressBloc progressBloc;
  var currentPageValue = 0.0;


  LoadedProgressScreen(this.userProgress, this.progressBloc) {
    progressBloc.controller =
        new PageController(initialPage: userProgress.bonus.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProgressBloc, ProgressState>(
        listener: (context, state) {
      if (state is LoadedProgressState) {
        print(state.index);
      }
    }, builder: (context, state) {
          if(state is LoadedProgressState){

      return Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(fit: StackFit.loose, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
         UserProfileCard(
        userProgress.points.last,
            userProgress.bonus.last,
            false,
         false,0),
              Container(
                  height: 270,
                  child: LimitedBox(
                      maxWidth: MediaQuery.of(context).size.width - 30,
                      maxHeight: 160,
                      child: PageView.builder(
                        onPageChanged: (index) {

                          BlocProvider.of<ProgressBloc>(context)
                              .add(IndexChangedEvent(this.userProgress, index));
                        },
                        physics: BouncingScrollPhysics(),
                        controller: progressBloc.controller,
                        itemCount: userProgress.points.length,
                        itemBuilder: (context, item) {
                          return ProgressCard(
                              userProgress.points[item],
                              (item==0)?0:userProgress.points[item-1],
                              userProgress.bonus[item],
                              (item==0)?0:userProgress.bonus[item-1],
                              (item != 0),
                              (item != userProgress.points.length - 1),item);
                        },
                      ))),

              Container(
                  alignment: Alignment.topCenter,
                  child:CompetitionCard(userProgress.points.last,20000))

            ],
          ),

            if(state.index!=userProgress.points.length-1)Container(
              margin: EdgeInsets.only(right: 5),
              height:505,
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_forward_ios),
            ),

          if(state.index!=0)Container(
              margin: EdgeInsets.only(left: 10),
              height: 505,
              alignment: Alignment.centerLeft,
              child: Icon(Icons.arrow_back_ios),
            ),

        ]),
      );}
          return Container();

    });
  }
}
