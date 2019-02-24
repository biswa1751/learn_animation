import 'package:flutter/material.dart';

void main() => runApp(LogoApp());

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
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
  }
  @override
  void dispose() {
     //TODO: 1.2:Dispoing the Controller
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //TODO: 2.3:Returning Animated Logo Class
    //TODO: 4.3:return The Grow Transition
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        //TODO: 1.3: Updating The Size of Flutter logo
        height: 300,
        width: 300,
        child: FlutterLogo(),
      ),
    );
  }
}
