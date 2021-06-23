import 'package:bloc/bloc.dart';
import 'package:eldorado/leads/leads_event.dart';
import 'package:eldorado/leads/leads_repo.dart';
import 'package:eldorado/leads/leads_state.dart';
import 'package:eldorado/leads/profile_short.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LeadsBloc extends Bloc<LeadsEvent,LeadsState>{


  LeadsRepo leadsRepo= LeadsRepo();
  ItemScrollController scrollController = ItemScrollController();
  LeadsBloc():super(InitialState());
  @override
  Stream<LeadsState> mapEventToState(LeadsEvent event) async*{

   if(event is LeadsLoadingEvent){
     yield LeadsLoadingState();

     List<ProfileShort> leads = await leadsRepo.getLeaderBoard();

     yield LeadsLoadedState(leads);
     //scrollController.scrollTo(index: 7, duration: Duration(seconds: 1));

   }

  }



}