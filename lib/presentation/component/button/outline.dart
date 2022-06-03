import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';

class OutlineB extends StatelessWidget {
  Function() ontap;
  String text;
  double height , weight;
  double radius;
  Color color;

  OutlineB({
    required this.ontap,
    required this.text,
    this.height = 58,
    this.weight=double.maxFinite,
    this.radius = 16,
    this.color=AppColor.buttonColor,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: weight,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColor.buttonColor,width: 2)
        ),
        child: Center(
          child: Text(text,style:const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.splashColor
          ),),
        ),
      ),
    );
  }
}
