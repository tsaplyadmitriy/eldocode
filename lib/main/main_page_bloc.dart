import 'package:bloc/bloc.dart';

import 'main_page_event.dart';
import 'main_page_state.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState>{
  MainPageBloc(this.index):super(SwitchTabState(index)){

  }
  int index;
  @override
  Stream<MainPageState> mapEventToState(MainPageEvent event) async*{
    if(event is SwitchNavigatorEvent){
      yield SwitchTabState(event.index);
    }
  }

  


}