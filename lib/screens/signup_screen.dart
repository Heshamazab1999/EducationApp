import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled3/components/Text_field.dart';
import 'package:untitled3/components/container_chooser.dart';
import 'package:untitled3/components/login_button.dart';
import 'package:untitled3/components/switch_gender.dart';
import 'package:untitled3/constant.dart';
import 'package:untitled3/screens/login_screen.dart';
import 'package:untitled3/utility/utility.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isMe = true;

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
                height: 200,
              ),
            ),
            FadeInLeft(
              animate: true,
              duration: Duration(seconds: 1),
              child: TextFieldLogin(
                function: (value) {},
                hint: "الاسم رباعى بالعربى",
                iconData: Icons.person,
                textInputType: TextInputType.name,
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
            FadeInLeft(
              animate: true,
              duration: Duration(seconds: 1),
              child: TextFieldLogin(
                function: (value) {},
                hint: "تأكيد كلمه المرور",
                iconData: Icons.lock,
                textInputType: TextInputType.name,
              ),
            ),
            FadeInRight(
              animate: true,
              duration: Duration(seconds: 1),
              child: TextFieldLogin(
                function: (value) {},
                hint: "رقم الهاتف",
                iconData: Icons.phone,
                textInputType: TextInputType.phone,
              ),
            ),
            FadeInLeft(
              animate: true,
              duration: Duration(seconds: 1),
              child: TextFieldLogin(
                function: (value) {},
                hint: "رقم هاتف ولى الامر",
                iconData: Icons.phone,
                textInputType: TextInputType.phone,
              ),
            ),
            FadeInRight(
              child: ContainerChooser(
                label: "اختيار السنه الدراسيه",
                function: () {
                  Utility.displayAlert(
                      "اختيار السنه الدراسيه",
                      "السنه الاولى",
                      "السنه الثانيه",
                      "السنه الثالثه",
                      "السنه الرابعه",
                      "السنه الخامسه",
                      context);
                },
              ),
            ),
            FadeInLeft(
              child: ContainerChooser(
                label: "اختيار اسم السنتر",
                function: () {
                  Utility.displayAlert(
                      "اختيار السنه الدراسيه",
                      "السنه الاولى",
                      "السنه الثانيه",
                      "السنه الثالثه",
                      "السنه الرابعه",
                      "السنه الخامسه",
                      context);
                },
              ),
            ),
            BounceInUp(
              child: Text(
                "اختيار النوع",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FadeInRight(
                  child: ChooseGender(
                    label: "ذكر",
                    function: () {
                      setState(() {
                        isMe = true;
                      });
                    },
                    image: "assets/images/male.png",
                    color: isMe ? Colors.blueGrey : Colors.transparent,
                  ),
                ),
                FadeInLeft(
                  child: ChooseGender(
                    label: "أنثى",
                    function: () {
                      setState(() {
                        isMe = false;
                      });
                    },
                    image: "assets/images/female.png",
                    color: !isMe ? Colors.blueGrey : Colors.transparent,

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: FadeInDown(
                animate: true,
                duration: Duration(seconds: 1),
                child: LoginButton(
                  function: () {},
                  label: "تسجيل",
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
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(" دخول ", style: K.textLoginStyle),
                    ),
                    Text(
                      "  بالفعل لديك ايميل ؟ ",
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
