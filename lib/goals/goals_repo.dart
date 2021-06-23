import 'goal.dart';

class GoalsRepository{


  Future<Goal> getCurrentGoal()async{

    await Future.delayed(Duration(milliseconds: 300),(){});
    return Goal(3000,5000,4,8,5,10);

  }




}