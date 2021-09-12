import 'package:flutter/material.dart';
import 'package:untitled3/constant.dart';

class AnswerButton extends StatelessWidget {
  final String? label;
  final Function()? function;
  final Color? color;

  AnswerButton({this.label, this.function, this.color = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: TextButton(
        onPressed: function,
        child: Text(
          label!,
          textDirection: TextDirection.ltr,
          maxLines: 10,
          textAlign: TextAlign.end,
          style: K.textDrawerStyle,
        ),
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(color: Color(0xFF6C63FF)))),
      ),
    );
  }
}
