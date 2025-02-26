import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0x00d9d9d9),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(height: 25),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          //   ),
          //   child: Padding(
          //     padding: EdgeInsets.all(24),
          //     child: Row(
          //       children: [
          //         Text(
          //           "Welcome Back",
          //           style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          //         ),
          //         SizedBox(height: 8),
          //         Text(
          //           "Welcome back to Estero. Have a good time",
          //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          //         ),
          //         SizedBox(height: 40),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class SizedBox extends StatelessWidget {
  const SizedBox({super.key, required int height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 70);
  }
}
