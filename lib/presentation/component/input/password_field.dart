
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  TextEditingController controller;

  PasswordField(this.controller, {Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration:  InputDecoration(
        suffixIcon: show?Icon(Icons.visibility_outlined):
        Icon(Icons.visibility_off_outlined)
      ),
    );
  }
}
