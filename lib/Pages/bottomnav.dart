import 'package:first_app/Pages/expandedscreen.dart';
import 'package:first_app/Pages/grid.dart';
import 'package:first_app/Pages/listviewbuilder.dart';
import 'package:first_app/Pages/mainpage.dart';
import 'package:first_app/Pages/secondpage.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selected = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const List _widgetOption = [
    Mainpage(),
    TestViewBuilder(),
    Secondpage(),
    GridPage(),
    Expandedscreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Pages")),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: "Cars"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: "Grid"),
          BottomNavigationBarItem(icon: Icon(Icons.expand), label: "Expanded"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        ],
        onTap: _onTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selected,
      ),
      body: Center(child: _widgetOption.elementAt(_selected)),
    );
  }
}
