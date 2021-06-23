

import 'package:eldorado/progress/user_progress.dart';

abstract class ProgressState{

}

class InitialProgressState extends ProgressState{}
class LoadingProgressState extends ProgressState{}
class LoadedProgressState extends ProgressState{
  UserProgress progress;
  int index;
  LoadedProgressState(this.progress,this.index);
}