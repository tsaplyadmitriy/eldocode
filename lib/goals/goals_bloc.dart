import 'package:bloc/bloc.dart';
import 'package:eldorado/goals/goal.dart';
import 'package:eldorado/goals/goals_event.dart';
import 'package:eldorado/goals/goals_state.dart';

import 'goals_repo.dart';

class GoalsBloc extends Bloc<GoalEvent,GoalState>{
  GoalsRepository goalsRepository= GoalsRepository();
  GoalsBloc() : super(InitialGoalState());

  @override
  Stream<GoalState> mapEventToState(GoalEvent event) async*{

    if(event is LoadingGoalEvent){
      yield LoadingGoalState();

      Goal goal = await goalsRepository.getCurrentGoal();

      yield LoadedGoalState(goal);

    }
  }



}