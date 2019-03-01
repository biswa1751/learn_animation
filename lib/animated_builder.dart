import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  // Leave out the height and width so it fills the animating parent
  Widget build(BuildContext context) => Container(
        //TODO: 4.1: Making The Flutter Logo
        child: FlutterLogo(),
      );
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;
  //TODO: 4.2: Making an Animated Builder
  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
          animation: animation,
          child: child,
          builder: (context,child){
            return Container(
              height: animation.value,
              width: animation.value,
              child: child,
            );
          },
        ),
      );
}
