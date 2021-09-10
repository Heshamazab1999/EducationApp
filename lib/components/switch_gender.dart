import 'package:flutter/material.dart';

class SwitchGender extends StatelessWidget {
  final String image;
  final Function()? function;
  final String label;

  SwitchGender({this.image = '', this.function,this.label=''});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: TextButton.styleFrom(backgroundColor: Colors.transparent),
      child: Column(
        children: [
          SizedBox(height: 60, width: 60, child: Image.asset(image)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              label,
              textAlign: TextAlign.right,

              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
