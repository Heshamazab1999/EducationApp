import 'package:flutter/material.dart';
import 'package:untitled3/constant.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: Duration(),
      animationDuration: Duration(),
      curve: Curves.bounceIn,
      direction: Direction.vertical,
      offset: 0.5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الصفحه الرئسيه"),
          elevation: 0,
          backgroundColor: K.ButtonColor,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
