import 'package:flutter/material.dart';
import 'package:untitled3/components/card.dart';
import 'package:untitled3/constant.dart';
import 'package:untitled3/utility/utility.dart';

class ExamScreen extends StatelessWidget {
  final List<String> label = ['امتحان خاص بوقت', 'عنوان الملف'];
  final List<String> images = [
    "assets/images/exam.png",
    "assets/images/file.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "الاختبارات",
          style: K.textAppBarStyle,
        ),
        backgroundColor: K.mainColor,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: images.length,
          itemBuilder: (BuildContext context, index) => Expanded(
                child: CardHome(
                  label: label[index],
                  image: images[index],
                  function: () {
                  },
                ),
              )),
    );
  }
}
