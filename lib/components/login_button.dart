import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final Function()? function;

  LoginButton({this.label = '', this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 250,
      child: TextButton(
        onPressed: function,
        child: Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.grey[700],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
