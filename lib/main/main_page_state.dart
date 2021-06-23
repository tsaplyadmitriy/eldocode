abstract class MainPageState{
  int index;
  MainPageState(this.index);
}

class SwitchTabState extends MainPageState{
  int index;
  SwitchTabState(this.index):super(index);

}