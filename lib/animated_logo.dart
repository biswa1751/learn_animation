import 'package:flutter/material.dart';
class AnimatedLogo extends AnimatedWidget {
  //TODO: 5.1:Giving Size and Opacity Tween
  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    //TODO: 5.2:Making Opacity Widget
    return Center(
      //TODO: 2.1: Making Animated logo Classand giving Flutter Logo
      child: Container(
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}