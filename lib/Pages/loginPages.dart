import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Welcome back to Estero. Have a good time",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 211, 208, 208),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                size: 16,
                                Icons.person_2_outlined,
                                color: const Color.fromARGB(255, 129, 129, 129),
                              ),
                              hintText: "Your Email/id",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Divider(color: Colors.grey),
                          ),
                          TextField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                size: 16,
                                Icons.lock_outline,
                                color: const Color.fromARGB(255, 129, 129, 129),
                              ),
                              hintText: "Your Password",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Forget Password ?",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 40),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Container(
                  //     height: 56,
                  //     decoration: BoxDecoration(
                  //       color: Colors.deepPurpleAccent,
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Login",
                  //         style: TextStyle(fontSize: 14, color: Colors.white),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Center(
                    child: TextButton(
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 56),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          Colors.deepPurpleAccent,
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Center(
                    child: Text(
                      "Or continue with",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 40),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),

                            minimumSize: WidgetStateProperty.all(Size(88, 48)),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          child: Image.asset("assets/images/google.png"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),

                            minimumSize: WidgetStateProperty.all(Size(88, 48)),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          child: Image.asset("assets/images/apple.png"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),

                            minimumSize: WidgetStateProperty.all(Size(88, 48)),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          child: Image.asset("assets/images/twitter.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 128),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        " Register",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 0, 94, 255),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
