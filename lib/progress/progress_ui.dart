import 'package:eldorado/goals/goals_bloc.dart';
import 'package:eldorado/goals/goals_state.dart';
import 'package:eldorado/goals/loaded_goal_screen.dart';
import 'package:eldorado/progress/loading_progress_screen.dart';
import 'package:eldorado/progress/progress_bloc.dart';
import 'package:eldorado/progress/progress_event.dart';
import 'package:eldorado/progress/progress_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'loaded_progress_screen.dart';


class ProgressScreen extends StatelessWidget{

  ProgressBloc progressBloc = ProgressBloc();



  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (BuildContext context)=> ProgressBloc(),
      child:BlocConsumer<ProgressBloc, ProgressState>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, state) {
            if(state is LoadedProgressState){
              return LoadedProgressScreen(state.progress,ProgressBloc());
            }
            if(state is LoadingProgressState){
              return LoadingProgressScreen();
            }
            if (state is InitialProgressState) {
              BlocProvider.of<ProgressBloc>(context).add(LoadingProgressEvent());
            }
            return LoadingProgressScreen();
          }


      ),
    );
  }




}