import 'package:first_app/Pages/listviewbuilder.dart';
import 'package:flutter/material.dart';

class Expandedscreen extends StatelessWidget {
  const Expandedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  child: Center(child: Text("Expanded 2")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Center(child: Text("Expanded 1")),
                ),
              ),
            ],
          ),
        ),

        Expanded(child: TestViewBuilder()),
      ],
    );
  }
}
