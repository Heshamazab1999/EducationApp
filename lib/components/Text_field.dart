import 'package:flutter/material.dart';
import 'package:untitled3/constant.dart';

class TextFieldLogin extends StatelessWidget {
  final String? hint;
  final Function(String)? function;
  final TextEditingController? controller;
  final IconData? iconData;
  final TextInputType? textInputType;

  TextFieldLogin(
      {this.hint,
      this.function,
      this.controller,
      this.iconData,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextFormField(
        keyboardType: textInputType,
        textAlign: TextAlign.right,
        onChanged: function,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: Icon(
              iconData,
              color: K.ButtonColor,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            filled: true,
            fillColor: Colors.grey[300],
            hintText: hint,
            hintStyle: TextStyle(
                fontSize: 18, color: Colors.black, locale: Locale("ar")),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ))),
      ),
    );
  }
}
