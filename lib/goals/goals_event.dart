import 'goal.dart';

abstract class GoalEvent{

}


class LoadingGoalEvent extends GoalEvent{}
class LoadedGoalEvent extends GoalEvent{
  Goal goal;
  LoadedGoalEvent(this.goal);
}