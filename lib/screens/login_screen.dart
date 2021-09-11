import 'package:flutter/material.dart';
import 'package:untitled3/components/Text_field.dart';
import 'package:untitled3/components/login_button.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled3/constant.dart';
import 'package:untitled3/screens/home_screen.dart';
import 'package:untitled3/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FadeInDown(
              animate: true,
              duration: Duration(seconds: 1),
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
                width: 300,
                height: 300,
              ),
            ),
            FadeInLeft(
              animate: true,
              duration: Duration(seconds: 1),
              child: TextFieldLogin(
                function: (value) {},
                hint: "رقم الهاتف",
                iconData: Icons.email,
                textInputType: TextInputType.phone,
              ),
            ),
            FadeInRight(
              animate: true,
              duration: Duration(seconds: 1),
              child: TextFieldLogin(
                function: (value) {},
                hint: "كلمه المرور",
                iconData: Icons.lock,
                textInputType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: FadeInDown(
                animate: true,
                duration: Duration(seconds: 1),
                child: LoginButton(
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                  },
                  label: "دخول",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: BounceInUp(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          " تسجيل",
                          textDirection: TextDirection.ltr,
                          style: K.textLoginStyle,
                        )),
                    Text(
                      "هل لديك ايميل ؟ ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
