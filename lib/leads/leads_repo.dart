import 'package:eldorado/leads/profile_short.dart';

class LeadsRepo{

  Future<List<ProfileShort>> getLeaderBoard()async {

    List<ProfileShort> list = [
      ProfileShort("id1", "Иван Иванов", 6500, "Продавец-консультант", 18000),
      ProfileShort("id2", "Мария Сергеева", 5400, "Кассир", 9000),
      ProfileShort("id3", "Дмитрий Иванов", 4300, "Старший кассир", 4000),
      ProfileShort("id4", "Марк Цукерберг", 3000, "Продавец-консультант", 1800),
      ProfileShort("id5", "Илон Маск ", 2127, "Менеджер по закупкам", 1500),
      ProfileShort("id6", "Анна Васильева", 2000, "Управляющий", 900),
      ProfileShort("id7", "Владимир Петров", 1700, "Администратор склада", 400),
      ProfileShort("id8", "Владимир Петров", 1400, "Администратор склада", 400),
      ProfileShort("id9", "Владимир Петров", 1200, "Администратор склада", 400),
      ProfileShort("id10", "Владимир Петров", 900, "Администратор склада", 400),
      ProfileShort("id11", "Владимир Петров", 400, "Администратор склада", 400),


    ];
    await Future.delayed(Duration(milliseconds: 400),(){

    });
    return list;


  }


}