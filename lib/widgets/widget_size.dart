import 'package:flutter_device_type/flutter_device_type.dart';



class SizeView{
  static double heightSearch =Device.get().isPhone?45:52;
  static double radiusButton = 10;
  static double heightButton = Device.get().isPhone ? 38 : 44;
  static double heightButtonSmall = Device.get().isPhone ? 32 : 37;
  static double paddingButtonWrap = Device.get().isPhone ? 15 : 18;



}