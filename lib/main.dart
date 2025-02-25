import 'package:first_app/Pages/bottomnav.dart';
import 'package:first_app/Pages/fourpage.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/': (context) => const Bottomnav(),
        '/home': (context) => const Secondpage(),
        '/thrid': (context) => const Thirdpage(),
        '/four': (context) => const Fourpage(),
      },
    );
  }
}
