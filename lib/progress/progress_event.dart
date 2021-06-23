import 'package:eldorado/progress/user_progress.dart';



abstract class ProgressEvent{

}


class LoadingProgressEvent extends ProgressEvent{}
class LoadedProgressEvent extends ProgressEvent{

  UserProgress progress;
  LoadedProgressEvent(this.progress);
}

class IndexChangedEvent extends ProgressEvent{
  int index;
  UserProgress progress;

  IndexChangedEvent(this.progress,this.index);
}