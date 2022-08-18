import 'package:flutter/material.dart';
import 'package:recorder_app/AI_Language_recognition/recorder_page.dart';
import 'package:recorder_app/splash_screen.dart';

import 'UI/introduction page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home:  SplashSreenPage(),
    );
  }
}

