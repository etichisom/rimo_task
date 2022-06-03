import 'package:flutter/cupertino.dart';
import 'package:rimo/utils/theme/colors.dart';

Widget Rimotext(String text,{
  FontWeight fontWeight= FontWeight.w500,
  double fonsize =14,
  TextAlign textAlign = TextAlign.start,
  Color color = AppColor.splashColor
}){
  return Text(text,
  style: TextStyle(
    color: color,
    fontSize: fonsize,
    fontWeight: fontWeight,
  ),);
}