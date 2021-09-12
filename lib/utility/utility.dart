import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:untitled3/components/Text_field.dart';
import 'package:untitled3/components/content_alert.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled3/constant.dart';

class Utility {
  static displayAlert(
    String title,
    List<String> myList,
    BuildContext context,
  ) async {
    final alert = Alert(
      context: context,
      content: SizedBox(
        height: 200,
        width: 250,
        child: ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: myList.length,
            itemBuilder: (BuildContext context, index) => ContentOfAlert(
                  function: () {},
                  label: myList[index].toString(),
                )),
      ),
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

  static displayAlertPassword(
    String title,
    BuildContext context,
  ) async {
    final alert = Alert(
      context: context,
      content: SingleChildScrollView(
        child: Column(children: [
          TextFieldLogin(
            function: (v) {},
            hint: "الرقم السرى الجديد",
            iconData: Icons.password,
            textInputType: TextInputType.name,
          ),
          TextFieldLogin(
            function: (v) {},
            hint: "تأكيد الرقم السر ",
            iconData: Icons.visibility,
            textInputType: TextInputType.name,
          ),
        ]),
      ),
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
          isOverlayTapDismiss: true,
          animationDuration: Duration(seconds: 1),
          isButtonVisible: true),
      buttons: [
        DialogButton(
          child: Text(
            "تأكيد",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          // color: K.PRIMARY_COLOR,
          color: K.mainColor,
        ),
      ],
    );
    await alert.show();
  }

  static displayAlertVerification(
    String title,
    Function(String)? function,
    BuildContext context,
  ) async {
    final alert = Alert(
      context: context,
      content: PinCodeTextField(
        keyboardType: TextInputType.number,
        appContext: context,
        // controller: controller,
        length: 6,
        obscureText: false,
        // animationType: AnimationType.fade,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            activeColor: Colors.white,
            fieldHeight: 40,
            fieldWidth: 40,
            activeFillColor: Colors.white,
            inactiveColor: Colors.white,
            selectedColor: Colors.white,
            disabledColor: Colors.white,
            inactiveFillColor: K.mainColor,
            selectedFillColor: Colors.white),
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        //   errorAnimationController: errorController,
        //controller: textEditingController,
        onCompleted: (v) {
          // _controller.label.value = v;
        },
        onChanged: function!,
        beforeTextPaste: (text) {
          print("Allowing to paste $text");
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
      ),
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
          isOverlayTapDismiss: true,
          animationDuration: Duration(seconds: 1),
          isButtonVisible: true),
      buttons: [
        DialogButton(
          child: Text(
            "تأكيد",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          // color: K.PRIMARY_COLOR,
          color: K.mainColor,
        ),
      ],
    );
    await alert.show();
  }
}
