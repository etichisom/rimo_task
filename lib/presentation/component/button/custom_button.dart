
import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';

class CustomButton extends StatelessWidget {
Function() ontap;
String text;
double height , weight;
double radius;
Color color;


CustomButton({
     required this.ontap,
    required this.text,
    this.height = 58,
    this.weight=double.maxFinite,
    this.radius = 16,
    this.color=AppColor.buttonColor,
     Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: weight,
      child: RaisedButton(
          onPressed: ontap,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Text(text,style:const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white
        ),),
      ),
    );
  }
}
