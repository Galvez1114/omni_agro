import 'package:flutter/material.dart';
import 'package:omni_agro/screens/Login.dart';

import 'screens/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/' : (context) => const Login(),
        'homePage':(context) => HomePage(),

      }
      );
  }
}
