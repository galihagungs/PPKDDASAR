import 'package:first_app/Pages/fourpage.dart';
import 'package:first_app/Pages/mainpage.dart';
import 'package:first_app/Pages/secondpage.dart';
import 'package:first_app/Pages/thirdpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/': (context) => const Mainpage(title: 'Flutter Demo Home Page'),
        '/home': (context) => const Secondpage(title: 'Profile Menu'),
        '/thrid': (context) => const Thirdpage(),
        '/four': (context) => const Fourpage(),
      },
    );
  }
}
