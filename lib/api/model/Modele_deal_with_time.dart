
import 'package:intl/intl.dart';

class MyDateUtalits{

  static String fromatNewsDate(String inputNewsDate){
    //2022-09-11T17:12:08Z
    var inputdateformater = DateFormat('yyyy-MM-dd');
    var outdateformater = DateFormat('yyyy ');
    var inputdate = inputdateformater.parse(inputNewsDate);
    var outdate = outdateformater.format(inputdate);

    return outdate;
  }


}