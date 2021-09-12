import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:untitled3/components/answer_button.dart';
import 'package:untitled3/components/cashed_image.dart';
import 'package:untitled3/components/login_button.dart';
import 'package:untitled3/constant.dart';
import 'package:animate_do/animate_do.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

bool change = false;
final List<String> label = [
  'الاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيارالاختيار الاول ',
  'الاختيار الثانى ',
  'الاختيار الثالث ',
  'الاختيار الرابع ',
];

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:K.mainColor,
        title: Text("بنك الاسئله",style: K.textAppBarStyle,),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CashedImage(
                  image:
                      "https://us.123rf.com/450wm/rawpixel/rawpixel1707/rawpixel170704756/81390964-question-mark-icon-thinking-of-solution.jpg?ver=6"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: FadeInLeft(
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: AutoSizeText(
                      "Enter Your QuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestionsQuestions",
                      textAlign: TextAlign.center,
                      maxLines: 10,
                      style: K.textCardStyle,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: label.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) => FadeInUp(
                        child: AnswerButton(
                          label: label[index],
                          function: () {
                            setState(() {
                              change = !change;
                            });
                          },
                          color: change ? Colors.green : Colors.transparent,
                        ),
                      )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: FadeInUp(
                  child: LoginButton(
                    label: "التالى",
                    function: () {},
                    color:K.mainColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
