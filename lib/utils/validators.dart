import 'package:intl/intl.dart';
class Utils {
  static final Utils _singleton = Utils._internal();

  factory Utils() {
    return _singleton;
  }

  Utils._internal();




  static bool isValidEmail(String email) {
    String p = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(email);
  }
  static bool isValidPhone(String phone){
    return phone.length==10?true:false;
  }

  static final RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static String formatPrice(double amount){
    final oCcy = NumberFormat("#,##0", "en_US");
    return oCcy.format(amount);
  }
  static String formatPriceUSD(double amount){
    final oCcy = NumberFormat("#,##0.00", "en_US");
    return oCcy.format(amount);
  }
  static String formatMoney(int amount) {
    final formatter = NumberFormat('#,###', 'en_US'); // hoặc 'vi_VN' nếu muốn dùng dấu . thay vì ,
    return formatter.format(amount);
  }

  static String priceThousand(double amount){

    final oCcy = NumberFormat("#,##0", "en_US");
    return oCcy.format(amount/1000);
  }


  static String formatEmailForHide(String email){
    int numSpace = 4;
    String result = email.replaceRange(0, numSpace, '*' * numSpace);
    return result;
  }
  static String getIntNumer(String text){
    String cleanText = text.replaceAll(RegExp(r'[^\d]'), ''); // Xóa mọi ký tự không phải số
    return cleanText;
  }

  static bool isNotEmpty(String? string){

    if(string==null){
      return false;
    }
    if(string.isEmpty){
      return false;
    }
    if(string.isNotEmpty){
      return true;
    }
    return true;
  }
  static bool compareTo(String a,String b){
    if(a.compareTo(b)==0||b.compareTo(a)==0){
      return true;
    }else{
      return false;
    }
  }
}
