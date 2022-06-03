
import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';

class CustomOutlineButton extends StatelessWidget {
  Function() ontap;
  String text;
  double height , weight;
  double radius;
  Color color;


  CustomOutlineButton({
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
      child: OutlinedButton(
        onPressed: ontap,
        style: ButtonStyle(
          shape:  MaterialStateProperty.all(
              RoundedRectangleBorder(
                side:const BorderSide(
                  color: AppColor.buttonColor,
                  width: 4,
                    style: BorderStyle.solid
                ),
                  borderRadius: BorderRadius.circular(radius)
              ))
        ),
        child: Text(text,style:const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),),
      ),
    );
  }
}
