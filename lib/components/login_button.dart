import 'package:flutter/material.dart';
import 'package:untitled3/constant.dart';

class LoginButton extends StatelessWidget {
  final String? label;
  final Function()? function;
final Color?color;
  LoginButton({this.label , this.function,this.color=K.ButtonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 250,
      child: TextButton(
        onPressed: function,
        child: Text(
          label!,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor:color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
