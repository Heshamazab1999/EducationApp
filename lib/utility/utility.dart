import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:untitled3/components/content_alert.dart';

class Utility {
  static displayAlert(
    String title,
    String label1,
    String label2,
    String label3,
    String label4,
    String label5,
    BuildContext context,
  ) async {
    final alert = Alert(
      context: context,
      content: Column(children: [
        ContentOfAlert(
          label: label1,
          function: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          endIndent: 10,
          indent: 10,
          height: 1,
          color: Colors.black,
        ),
        ContentOfAlert(
          label: label2,
          function: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          endIndent: 10,
          indent: 10,
          height: 1,
          color: Colors.black,
        ),
        ContentOfAlert(
          label: label3,
          function: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          endIndent: 10,
          indent: 10,
          height: 1,
          color: Colors.black,
        ),
        ContentOfAlert(
          label: label4,
          function: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          endIndent: 10,
          indent: 10,
          height: 1,
          color: Colors.black,
        ),
        ContentOfAlert(
          label: label5,
          function: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          endIndent: 10,
          indent: 10,
          height: 1,
          color: Colors.black,
        ),
      ]),
      title: title,
      style: AlertStyle(
          backgroundColor: Colors.white,
          alertBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          descStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          isCloseButton: false,
          isButtonVisible: false),
    );
    await alert.show();
  }
}
