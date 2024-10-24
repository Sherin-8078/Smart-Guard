import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_guard/signup_page.dart';

import 'homepage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 150),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Smart Guard",
                      style: GoogleFonts.protestStrike(fontSize: 50)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "User-name"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Password"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.grey[300]),
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(150, 40),
                                  backgroundColor: Colors.blue[300]),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homepage()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: Size(150, 40),
                                  side: BorderSide(
                                      width: 2, color: Colors.lightBlueAccent)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupPage()));
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
