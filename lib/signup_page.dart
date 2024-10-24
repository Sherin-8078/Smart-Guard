import 'package:flutter/material.dart';
import 'package:smart_guard/loginpage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 150),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Device Id",
                          hintText: "Enter Device Id",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 2)))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter User Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 2)))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Email-id",
                          hintText: "Enter Email-id",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 2)))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 2)))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent, width: 2)))),
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
                                    builder: (context) => Loginpage()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already a user?",
                          style: TextStyle(color: Colors.grey[300])),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "  Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ))
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
