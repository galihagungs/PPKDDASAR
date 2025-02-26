import 'package:first_app/data/carsdata.dart';
import 'package:flutter/material.dart';

class TestViewBuilder extends StatefulWidget {
  const TestViewBuilder({super.key});

  @override
  State<TestViewBuilder> createState() => _TestViewBuilderState();
}

class _TestViewBuilderState extends State<TestViewBuilder> {
  List<String> items = [
    'Mercedes',
    'BMW',
    'Audi',
    'Toyota',
    'Honda',
    'Ford',
    'Chevrolet',
    'Hyundai',
    'Kia',
    'Nissan',
  ];

  @override
  Widget build(BuildContext context) {
    // modeldata();
    return ListView.builder(
      itemCount: carsData2.length,
      itemBuilder: (context, index) {
        final data = carsData2[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 10,
                  offset: Offset(2, 3), // Shadow position
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(data.image, height: 70, width: 70),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.brand,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 5,
                                    offset: Offset(2, 3), // Shadow position
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    data.country.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Icon(Icons.forward, color: Colors.indigo)),
              ],
            ),
          ),
        );
      },
    );
    // return Scaffold(
    //   body: Column(children: [Text(carsData2.length.toString())]),
    // );
  }
}
