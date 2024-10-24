import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Livevideo extends StatelessWidget {
  const Livevideo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text("Live Video Feed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: CupertinoColors.white)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)))),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 150),
          child: Container(
            child: Column(
              children: [
                Center(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(250, 100),
                            side: BorderSide(
                                width: 2, color: Colors.lightBlueAccent)),
                        onPressed: () {},
                        child: Text(
                          "Door 1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ))),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(250, 100),
                            side: BorderSide(
                                width: 2, color: Colors.lightBlueAccent)),
                        onPressed: () {},
                        child: Text(
                          "Door 2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
