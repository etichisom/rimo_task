import 'package:flutter/material.dart';
import 'package:rimo/presentation/component/text/text.dart';
import 'package:rimo/utils/theme/colors.dart';

AppBar Rimobar(BuildContext context,{String title=""}){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Rimotext(title,fonsize: 18,fontWeight: FontWeight.w700,color:AppColor.appbarColor),
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon:const Icon(Icons.clear,color: AppColor.splashColor,)),
  );
}