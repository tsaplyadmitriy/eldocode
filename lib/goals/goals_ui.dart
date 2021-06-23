import 'package:eldorado/goals/goals_bloc.dart';
import 'package:eldorado/goals/goals_state.dart';
import 'package:eldorado/goals/loaded_goal_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'goals_event.dart';
import 'loading_goal_screen.dart';

class GoalsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
       create: (BuildContext context)=> GoalsBloc(),
     child:BlocConsumer<GoalsBloc, GoalState>(
     listener: (BuildContext context, state) {},
    builder: (BuildContext context, state) {
       if(state is LoadedGoalState){
       return LoadedGoalScreen(state.goal);
       }
       if(state is LoadingGoalState){
         return LoadingGoalScreen();
       }
       if (state is InitialGoalState) {
         BlocProvider.of<GoalsBloc>(context).add(LoadingGoalEvent());
       }
       return LoadingGoalScreen();
    }


     ),
   );
  }




}