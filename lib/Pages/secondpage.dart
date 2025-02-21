import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("images/person.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
              "https://static.wikia.nocookie.net/f1-formula-1/images/4/40/Ferrari.jpg/revision/latest?cb=20230118203655",
            ),
          ),
          Text("SF90", style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selamat Datang Dihalaman Pertama",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BIODATA",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultText("Nama :"),
                  defaultText("Kelas :"),
                  defaultText("Nomor Telpon :"),
                  defaultText("Alamat :"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultText("Galih Agung Sukmawan", font: FontWeight.w100),
                  defaultText("Mobile Programing"),
                  defaultText("081287268906"),
                  defaultText("Jakarta"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text defaultText(String title, {FontWeight? font, double? sizeFont}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: sizeFont ?? 15,
        fontWeight: font ?? FontWeight.w500,
      ),
    );
  }
}
