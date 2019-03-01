import 'package:flutter/material.dart';
import 'package:learn_animation/animated_builder.dart';
import 'package:learn_animation/animated_logo.dart';

void main() => runApp(LogoApp());

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin{
  Animation _animation;
  AnimationController _animationController;
  @override
  void initState() {
    //TODO: 1.1:Initialize Animation and Animation Controller and adding Mixin
    //TODO: 2.2:Removing Listener and SetState
    //TODO: 3.1:Adding Status Listener and Printing Data
    //TODO: 3.2:Reversing The Animation and making a Loop
    //TODO: 5.3:Add Curved Animation
    super.initState();
    _animationController=AnimationController(
      vsync: this,
      duration: Duration(seconds: 1)
    );
    _animation=CurvedAnimation(curve: Curves.bounceInOut,parent: _animationController)..addStatusListener((status){
      if(status==AnimationStatus.completed)
      {
        _animationController.reverse();
      }else if(status==AnimationStatus.dismissed)
      {
        _animationController.forward();
      }
    });
    // _animation.addListener((){
    //   setState(() {
    //   });
    // });

    _animationController.forward();
  }
  @override
  void dispose() {
     //TODO: 1.2:Dispoing the Controller
     _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //TODO: 2.3:Returning Animated Logo Class
    //TODO: 4.3:return The Grow Transition
    return Center(
      // child: GrowTransition(
      //   animation: _animation,
      //   child: LogoWidget(),
      // ),0
      child: AnimatedLogo(
        animation: _animation,
      ),
      // child: Container(
      //   margin: EdgeInsets.symmetric(vertical: 10),
      //   //TODO: 1.3: Updating The Size of Flutter logo
      //   height: _animation.value,
      //   width: _animation.value,
      //   child: FlutterLogo(),
      // ),
    );
  }
}
