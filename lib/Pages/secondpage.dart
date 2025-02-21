import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Selamat Datang Dihalaman Pertama", style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.dotted,
              ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BIODATA", style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 15,
                  children: [
                      Text("Nama: ", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("Galih Agung Sukmawan", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 15,
                  children: [
                      Text("Kelas: ", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("Mobile Programing", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 15,
                  children: [
                      Text("Nomor Tlp: ", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("081287268906", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/');
                },
                child: const Text('Go back!'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text("Coba2"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nama :", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Kelas :", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Nomor Telpon :", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Alamat :", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Galih Agung Sukmawan"),
                    Text("Mobile Programing"),
                    Text("081287268906"),
                    Text("Jakarta"),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}