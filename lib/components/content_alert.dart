import 'package:flutter/material.dart';

class ContentOfAlert extends StatelessWidget {
  final String label;
  final Function()? function;

  ContentOfAlert({this.label = '', this.function});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function,
      title: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
