import 'package:eldorado/goals/goals_ui.dart';
import 'package:eldorado/leads/leads_ui.dart';
import 'package:eldorado/main/main_page_bloc.dart';
import 'package:eldorado/main/main_page_state.dart';
import 'package:eldorado/progress/progress_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../styles.dart';
import 'dart:math' as math;
import 'main_page_event.dart';

class MainPageUi extends StatelessWidget {

  var widgetsMap;
  List<Widget> _widgets  = [
    GoalsScreen(),
    ProgressScreen(),
    LeadsScreen()

  ];

  @override
  Widget build(BuildContext context) {
    final PageStorageBucket _bucket = PageStorageBucket();
    widgetsMap = _createRoutes();
    return BlocProvider<MainPageBloc>(
      create: (context) => MainPageBloc(0),
      child:Scaffold(
        backgroundColor: Color(0xffe30237),

      //appBar: AppBar(title: Text("Eldocode"),),
        body:  BlocConsumer<MainPageBloc, MainPageState>(
    listener: (BuildContext context, state) {},
    builder: (BuildContext context, state) {
      return SafeArea(
      child: Container(
      color: Colors.black,
        child: Material(
          child: PageStorage(
            child: widgetsMap[state.index],
            bucket: _bucket,
          ),
        ),
      ),
    );}),

    bottomNavigationBar:

    BlocConsumer<MainPageBloc, MainPageState>(
    listener: (BuildContext context, state) {},
    builder: (BuildContext context, state) {
    return Padding(

      padding: EdgeInsets.only(bottom: 4),
      child:BottomNavigationBar(

      elevation: 2,
      enableFeedback: false,
      selectedFontSize: 22,
      unselectedFontSize: 22,
      backgroundColor: Constants.primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.7),
      selectedLabelStyle: TextStyles.navigatorBottomItem,
      unselectedLabelStyle: TextStyles.navigatorBottomItem,
      currentIndex: state.index,
      onTap: (newIndex) {
        BlocProvider.of<MainPageBloc>(context).add(SwitchNavigatorEvent(newIndex));
      },
      items: [
        BottomNavigationBarItem(
          icon: state.index == 0
              ? Padding(
            padding:
            const EdgeInsets.only(top: 8, bottom: 8.0),
            child: Icon(CupertinoIcons.list_bullet),
          )
              : Padding(
            padding:
            const EdgeInsets.only(top: 8, bottom: 8.0),
            child: Icon(
              CupertinoIcons.list_bullet,
            ),
          ),

          label: "Задания",
        ),
        BottomNavigationBarItem(
          icon: state.index == 1
              ? Padding(
            padding:
            const EdgeInsets.only(top: 8, bottom: 8.0),
            child: Icon(CupertinoIcons.star_fill),
          )
              : Padding(
            padding:
            const EdgeInsets.only(top: 8, bottom: 8.0),
            child: Icon(CupertinoIcons.star),
          ),
          label: "Цель",
        ),

        BottomNavigationBarItem(
          icon: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),

            child: state.index == 2
                ? Padding(
              padding: const EdgeInsets.only(
                  top: 6, bottom: 8.0),
              child: Icon(CupertinoIcons.capslock),
            )
                : Padding(
              padding: const EdgeInsets.only(
                  top: 6, bottom: 8.0),
              child: Icon(CupertinoIcons.capslock),
            ),
          ),
          label: "Рейтинг",
        ),

      ],
    ));
    }))

    );
  }


  Map<int, Widget> _createRoutes() {
    return {
      0: _widgets[0],
      1: _widgets[1],
      2: _widgets[2],

    };
  }
}
