import 'package:first_app/data/griddata.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: gridData.length,
        itemBuilder: (context, index) {
          final data = gridData[index];
          return Container(
            decoration: BoxDecoration(
              color: gridData[index].color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 10,
                  offset: Offset(2, 3), // Shadow position
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    data.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.network(data.image, height: 20, width: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
