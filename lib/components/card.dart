import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:untitled3/constant.dart';

class CardHome extends StatelessWidget {
  final String label;
  final Function()? function;
  final String image;

  CardHome({this.function, this.label = '', this.image = ''});

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
        delayStart: Duration(milliseconds: 800),
        animationDuration: Duration(milliseconds: 800),
        curve: Curves.easeOut,
        direction: Direction.vertical,
        offset: 0.5,
        child: GestureDetector(
          onTap: function,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 200,
                width: 300,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height:120,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          image,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        label,
                        style: K.textCardStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
