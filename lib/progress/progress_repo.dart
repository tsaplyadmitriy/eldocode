import 'package:eldorado/progress/user_progress.dart';

class ProgressRepository{


  Future<UserProgress> getProgress()async {

    await Future.delayed(Duration(milliseconds: 200),(){});
    return UserProgress([1200,1400,1600,2800], [9000,8000,9500,13000]);

  }

}