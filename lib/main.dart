import 'package:flutter/material.dart';

import 'package:qhire/payment.dart';
import 'package:qhire/splash.dart';
import 'package:qhire/viewaddpost.dart';

import 'activity.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qhire',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        inputDecorationTheme: const InputDecorationTheme(
      // enabledBorder: OutlineInputBorder(
      //   borderSide: BorderSide(color:Colors.orange),
      // ),
      // focusedBorder: OutlineInputBorder(
      //   borderSide: BorderSide(color: Colors.orange),
      // ),
    ),
      ),
       home:const Splash(),
    );
  }
}

