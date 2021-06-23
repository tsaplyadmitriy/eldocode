import 'package:bloc/bloc.dart';
import 'package:eldorado/goals/goal.dart';
import 'package:eldorado/goals/goals_event.dart';
import 'package:eldorado/goals/goals_repo.dart';
import 'package:eldorado/goals/goals_state.dart';
import 'package:eldorado/progress/progress_event.dart';
import 'package:eldorado/progress/progress_repo.dart';
import 'package:eldorado/progress/progress_state.dart';
import 'package:eldorado/progress/user_progress.dart';
import 'package:flutter/cupertino.dart';



class ProgressBloc extends Bloc<ProgressEvent,ProgressState>{
  ProgressRepository progressRepository= ProgressRepository();
  var currentPageValue = 0.0;
  PageController controller = PageController();
  ProgressBloc() : super(InitialProgressState()){
    controller.addListener(() {


      });
    }


  @override
  Stream<ProgressState> mapEventToState(ProgressEvent event) async*{

    if(event is LoadingProgressEvent){
      yield LoadingProgressState();

     UserProgress progress = await progressRepository.getProgress();

      yield LoadedProgressState(progress,progress.bonus.length-1);

    }

    if(event is IndexChangedEvent){
      print("a");
      yield LoadedProgressState(event.progress,event.index);
    }
  }



}