import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recorder_app/UI/introduction%20page.dart';



class SplashSreenPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
              body: AnimatedSplashScreen(

                     duration: 3000,
                    splash: CircleAvatar(
                      backgroundColor: Colors.white,
                       radius: 200,
                           child: Image.asset("image/appicon3.png",)),
                       nextScreen: IntroducPage(),
                      splashTransition: SplashTransition.fadeTransition,
                      //pageTransitionType: PageTransitionType.scale,

                       backgroundColor: Colors.purple.withOpacity(0.2)
           ),


    );

  }
}
