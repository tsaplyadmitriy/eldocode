import 'goal.dart';

abstract class GoalState{

}

class InitialGoalState extends GoalState{}
class LoadingGoalState extends GoalState{}
class LoadedGoalState extends GoalState{
  Goal goal;
  LoadedGoalState(this.goal);
}