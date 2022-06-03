import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  TextEditingController controller;
  String hint;
  bool secure;
  TextInputType textInputType;


  CustomInput({Key? key,
    this.secure = false,
    required this.controller,
    this.hint="",
    this.textInputType=TextInputType.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
     obscureText: secure,
     controller: controller,
      validator: (e){
        if(e==""){
          return "Enter field";
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hint
      ),
    );
  }
}
