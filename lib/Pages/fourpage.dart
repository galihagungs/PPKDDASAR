import 'package:flutter/material.dart';

class Fourpage extends StatefulWidget {
  const Fourpage({super.key});

  @override
  State<Fourpage> createState() => _FourpageState();
}

class _FourpageState extends State<Fourpage> {
  int _selected = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const List _widgetOption = [
    Text("Index 0 : Profile", style: optionStyle),
    Text("Index 1 : Messages", style: optionStyle),
    Text("Index 2 : Setting", style: optionStyle),
  ];

  void _onTap(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        shadowColor: Colors.blue,
        elevation: 60,
        backgroundColor: Colors.white,
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 10,
                      offset: Offset(2, 3), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/person.jpg"),
                                fit: BoxFit.fitHeight,
                              ),
                              border: Border.all(width: 3, color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 15,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              'Galih Agung Sukmawan',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: _selected == 0 ? Colors.blue : Colors.black,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: _selected == 0 ? Colors.blue : Colors.black,
                ),
              ),
              onTap: () {
                _onTap(0);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: _selected == 1 ? Colors.blue : Colors.black,
              ),
              title: Text(
                'Messages',
                style: TextStyle(
                  color: _selected == 1 ? Colors.blue : Colors.black,
                ),
              ),
              onTap: () {
                _onTap(1);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: _selected == 2 ? Colors.blue : Colors.black,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: _selected == 2 ? Colors.blue : Colors.black,
                ),
              ),
              onTap: () {
                _onTap(2);
              },
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                      Navigator.popAndPushNamed(context, '/');
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(child: _widgetOption[_selected]),
    );
  }
}
