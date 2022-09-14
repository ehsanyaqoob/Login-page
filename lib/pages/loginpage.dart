import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.android,
                  size: 100,
                ),
                // Hi! Friends
                Text('Hello Friends',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),

                SizedBox(height: 10),
                // ignore: unnecessary_string_escapes
                Text("Welcome back, you\'ve missed some!",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                SizedBox(height: 50),
                // email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "email"))),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "password"))),
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text('Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )))),
                ),
                SizedBox(height: 20),
                // not a member
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('Not a member?'),
                  Text('Register Here',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))
                ])
              ],
            ),
          ),
        ));
  }
}
