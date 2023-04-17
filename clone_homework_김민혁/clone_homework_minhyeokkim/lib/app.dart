import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';
import 'intro.dart';
import 'navigation.dart';
import 'profile.dart';
import 'location.dart';
import 'add.dart';
import 'detail.dart';
import 'chat.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrot',
      initialRoute: '/',
      routes: {
        '/' :(BuildContext context) => const Intro(),
        '/signin': (BuildContext context) => const Signin(),
        '/signup': (BuildContext context) => const Signup(),
        '/navigation': (BuildContext context) => const Navigation(),
        '/profile': (BuildContext context) => const Profile(),
        '/location': (BuildContext context) => const Location(),
        '/add': (BuildContext context) => const Add(),
        '/detail': (BuildContext context) => const Detail(),
        '/chat': (BuildContext context) => const Chat(),
      },
    );
  }
}