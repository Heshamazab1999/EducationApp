import 'package:flutter/material.dart';
import 'package:untitled3/components/Social_Button.dart';
import 'package:untitled3/components/bio_component.dart';
import 'package:untitled3/components/card.dart';
import 'package:untitled3/constant.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:untitled3/screens/quiz_screen.dart';
import 'package:untitled3/utility/utility.dart';

class HomeScreen extends StatelessWidget {
  final List<String> images = [
    "assets/images/quiz.png",
    "assets/images/chat.png",
    "assets/images/bank.png",
    "assets/images/history.png",
    "assets/images/qr.png",
    "assets/images/video.png",
    "assets/images/files.png",
  ];
  final List<String> label = [
    K.quiz,
    K.conversion,
    K.bankInformation,
    K.history,
    K.qr,
    K.videos,
    K.files,
  ];
  final List<String> imagesIcon = [
    "assets/images/date.png",
    "assets/images/phone.png",
    "assets/images/password.png",
    "assets/images/whatsapp.png",
    "assets/images/youtube.png",
    "assets/images/facebook.png",
    "assets/images/share.png",
    "assets/images/logout.png",
  ];
  final List<String> labels = [
    "الاشتراك الشهرى",
    "التواصل عبر الهاتف",
    "كلمه المرور",
    "WhatsApp",
    "Youtube",
    "Facebook",
    "مشاكه البرنامج",
    "تسجيل خروج"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(K.homeScreen),
        elevation: 0,
        backgroundColor: K.mainColor,
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
          itemBuilder: (BuildContext context, index) => CardHome(
                label: label[index],
                image: images[index],
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizScreen()));
                },
              )),
      drawer: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
          child: Drawer(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset(
                        "assets/images/male.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    ExpansionTileCard(
                      elevation: 0,
                      title: Text(
                        "الاسم",
                        style: K.textBioStyle,
                      ),
                      children: [
                        Divider(
                          color: Colors.grey,
                          endIndent: 20,
                          indent: 20,
                        ),
                        BioComponent(
                          centerName: "سنتر المعادى",
                          nameOfYear: "الصف الثالث",
                          phone1: "01004479160",
                          phone2: "01004479160",
                          subscription: 24,
                          points: 1,
                        ),
                      ],
                    ),
                    ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: imagesIcon.length,
                        itemBuilder: (BuildContext context, index) =>
                            SocialButton(
                              function: () {
                                Utility.displayAlertPassword("تعين كلمه المرور", context);

                              },
                              label: labels[index],
                              image: imagesIcon[index],
                            ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
