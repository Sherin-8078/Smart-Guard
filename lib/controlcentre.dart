import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controlcentre extends StatefulWidget {
  Controlcentre({super.key});

  @override
  State<Controlcentre> createState() => _ControlcentreState();
}

class _ControlcentreState extends State<Controlcentre> {
  bool firstSwitchValue = false;
  bool secondSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text("Control Centre",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: CupertinoColors.white)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)))),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Door 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                DefaultTextStyle.merge(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    child: IconTheme.merge(
                        data: IconThemeData(color: Colors.white),
                        child: AnimatedToggleSwitch.dual(
                          current: firstSwitchValue,
                          first: false,
                          second: true,
                          spacing: 45,
                          animationDuration: Duration(milliseconds: 600),
                          style: const ToggleStyle(
                              borderColor: Colors.transparent,
                              indicatorColor: Colors.white,
                              backgroundColor: Colors.black),
                          customStyleBuilder: (context, local, global) {
                            if (global.position <= 0) {
                              return ToggleStyle(
                                  backgroundColor: Colors.red[800]);
                            }
                            return ToggleStyle(
                                backgroundGradient: LinearGradient(colors: [
                              Colors.green,
                              Colors.red[800]!
                            ], stops: [
                              global.position -
                                  (1 - 2 * max(0, global.position - 0.5)) * 0.7,
                              global.position +
                                  max(0, 2 * (global.position - 0.5)) * 0.7,
                            ]));
                          },
                          borderWidth: 6,
                          height: 60,
                          loadingIconBuilder: (context, global) =>
                              CupertinoActivityIndicator(
                            color: Color.lerp(
                                Colors.red[800], Colors.green, global.position),
                          ),
                          onChanged: (value) =>
                              setState(() => firstSwitchValue = value),
                          iconBuilder: (value) => value
                              ? const Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                  size: 32,
                                )
                              : Icon(
                                  Icons.lock_open_rounded,
                                  color: Colors.red[800],
                                  size: 32,
                                ),
                          textBuilder: (value) => value
                              ? const Center(
                                  child: Text("Locked"),
                                )
                              : Center(
                                  child: Text("Open"),
                                ),
                        ))),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Door 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                DefaultTextStyle.merge(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    child: IconTheme.merge(
                        data: IconThemeData(color: Colors.white),
                        child: AnimatedToggleSwitch.dual(
                          current: secondSwitchValue,
                          first: false,
                          second: true,
                          spacing: 45,
                          animationDuration: Duration(milliseconds: 600),
                          style: const ToggleStyle(
                              borderColor: Colors.transparent,
                              indicatorColor: Colors.white,
                              backgroundColor: Colors.black),
                          customStyleBuilder: (context, local, global) {
                            if (global.position <= 0) {
                              return ToggleStyle(
                                  backgroundColor: Colors.red[800]);
                            }
                            return ToggleStyle(
                                backgroundGradient: LinearGradient(colors: [
                              Colors.green,
                              Colors.red[800]!
                            ], stops: [
                              global.position -
                                  (1 - 2 * max(0, global.position - 0.5)) * 0.7,
                              global.position +
                                  max(0, 2 * (global.position - 0.5)) * 0.7,
                            ]));
                          },
                          borderWidth: 6,
                          height: 60,
                          loadingIconBuilder: (context, global) =>
                              CupertinoActivityIndicator(
                            color: Color.lerp(
                                Colors.red[800], Colors.green, global.position),
                          ),
                          onChanged: (value) =>
                              setState(() => secondSwitchValue = value),
                          iconBuilder: (value) => value
                              ? const Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                  size: 32,
                                )
                              : Icon(
                                  Icons.lock_open_rounded,
                                  color: Colors.red[800],
                                  size: 32,
                                ),
                          textBuilder: (value) => value
                              ? const Center(
                                  child: Text("Locked"),
                                )
                              : Center(
                                  child: Text("Open"),
                                ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
