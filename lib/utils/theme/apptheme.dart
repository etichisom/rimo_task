
import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themeData  =
    ThemeData(
      scaffoldBackgroundColor: AppColor.scaffoldColor,
      fontFamily: "sfpro",
      inputDecorationTheme: InputDecorationTheme(
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:const  BorderSide(
            color: AppColor.orangeColor,
            width: 0.5
          )
        )
      )
    );