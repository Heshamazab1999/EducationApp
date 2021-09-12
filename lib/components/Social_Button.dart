import 'package:flutter/material.dart';
import 'package:untitled3/constant.dart';

class SocialButton extends StatelessWidget {
  final String? label;
  final Function()? function;
  final String? image;

  SocialButton({this.function, this.image, this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: function,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    label!,
                    style: K.textDrawerStyle,
                  ),
                ),
                SizedBox(width: 40, height: 35, child: Image.asset(image!)),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          )
        ],
      ),
    );
  }
}
