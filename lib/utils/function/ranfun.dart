import 'package:intl/intl.dart';


class Ranfun{


 static String naira(String string){
    var n= double.parse(string);
    var noSimbolInUSFormat = NumberFormat.currency(locale: "en_US",
        symbol: "₦ ");
    return noSimbolInUSFormat.format(n);
  }
}