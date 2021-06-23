import 'package:eldorado/leads/profile_short.dart';

abstract class LeadsState{

}

class InitialState extends LeadsState{

}
class LeadsLoadingState extends LeadsState{

}

class LeadsLoadedState  extends LeadsState{
  List<ProfileShort> leaders;
  LeadsLoadedState(this.leaders);
}