import 'package:flutter/material.dart';
import 'package:untitled3/constant.dart';

class ContainerChooser extends StatelessWidget {
  final String label;
  final Function()? function;

  ContainerChooser({this.label = '', this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: K.ButtonColor,
                ),
                Text(
                  label,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
