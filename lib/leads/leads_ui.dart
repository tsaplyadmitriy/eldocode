import 'package:eldorado/leads/leads_bloc.dart';
import 'package:eldorado/leads/leads_event.dart';
import 'package:eldorado/leads/leads_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'leaderboard_list.dart';
import 'leaderboard_mocked.dart';

class LeadsScreen extends StatelessWidget {
  //LeadsBloc leadsBloc= LeadsBloc();



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LeadsBloc(),
        child: BlocConsumer<LeadsBloc, LeadsState>(
            listener: (BuildContext context, state) {},
            builder: (BuildContext context, state) {
              if (state is LeadsLoadingState) {
                return DefaultTabController(
                    length: 3,
                    child: Scaffold(
                        appBar: AppBar(
                          toolbarHeight: 60,
                          //title: Text("Рейтинг"),

                          bottom: TabBar(
                            indicatorColor: Colors.white,

                            tabs: [
                              Tab(text: "Магазин",),
                              Tab(text: "Регион"),
                              Tab(text:"Дивизион"),
                            ],
                          ),
                        ),
                        body:Container(
                            child: Center(
                                child:TabBarView(
                                  children: [
                                    LeaderBoardListMock(),
                                    LeaderBoardListMock(),
                                    LeaderBoardListMock()
                                  ],
                                )))));
              } else if (state is LeadsLoadedState) {
                return DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      toolbarHeight: 60,
                      //title: Text("Рейтинг"),

                      bottom: TabBar(
                        indicatorColor: Colors.white,

                        tabs: [
                          Tab(text: "Магазин",),
                          Tab(text: "Регион"),
                          Tab(text:"Дивизион"),
                        ],
                      ),
                    ),
                    body:Container(
                    child: Center(
              child:TabBarView(
              children: [
              LeaderBoardList(state.leaders,BlocProvider.of<LeadsBloc>(context).scrollController),
              LeaderBoardList(state.leaders,BlocProvider.of<LeadsBloc>(context).scrollController),
              LeaderBoardList(state.leaders,BlocProvider.of<LeadsBloc>(context).scrollController)
              ],
                       )))));
              }
              if (state is InitialState) {
                BlocProvider.of<LeadsBloc>(context).add(LeadsLoadingEvent());
              }
              return  DefaultTabController(
                  length: 3,
                  child: Scaffold(
                      appBar: AppBar(
                        toolbarHeight: 60,
                        //title: Text("Рейтинг"),

                        bottom: TabBar(
                          indicatorColor: Colors.white,

                          tabs: [
                            Tab(text: "Магазин",),
                            Tab(text: "Регион"),
                            Tab(text:"Дивизион"),
                          ],
                        ),
                      ),
                      body:Container(
                          child: Center(
                              child:TabBarView(
                                children: [
                                  LeaderBoardListMock(),
                                  LeaderBoardListMock(),
                                  LeaderBoardListMock()
                                ],
                              )))));
            }));
  }
}
