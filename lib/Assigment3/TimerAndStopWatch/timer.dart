// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:chetan_koli/Assigment3/TimerAndStopWatch/timerandspw.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int hour = 0;
  int min = 0;
  int sec = 0;

  String timetodisplay = "";
  bool started = true;
  bool stoped = true;
  late int timefortimer;
  bool cancelTimer = false;

  void start() {
    setState(() {
      started = false;
      stoped = false;
    });

    timefortimer = ((hour * 3600) + (min * 60) + sec);
    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        if (timefortimer < 1 || cancelTimer == true) {
          t.cancel();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const TimerAndStopWatch()));
        } else if (timefortimer < 6) {
          timetodisplay = timefortimer.toString();
          timefortimer = timefortimer - 1;
        } else if (timefortimer < 60) {
          int m = timefortimer ~/ 60;
          int s = timefortimer - (60 * m);

          timetodisplay = m.toString() + ":" + s.toString();
          timefortimer = timefortimer - 1;
        } else {
          int h = timefortimer ~/ 3600;
          int t = timefortimer - (3600 * h);

          int m = t ~/ 60;
          int s = t - (60 * m);

          timetodisplay =
              h.toString() + ":" + m.toString() + ":" + s.toString();
          timefortimer = timefortimer - 1;
        }
      });
    });
  }

  void stop() {
    setState(() {
      started = true;
      stoped = true;
      cancelTimer = true;
      timetodisplay = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text("HH"),
                    ),
                    NumberPicker(
                        itemWidth: 60.0,
                        minValue: 0,
                        maxValue: 23,
                        value: hour,
                        onChanged: (val) {
                          setState(() {
                            hour = val;
                          });
                        })
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text("MM"),
                    ),
                    NumberPicker(
                        itemWidth: 60.0,
                        minValue: 0,
                        maxValue: 59,
                        value: min,
                        onChanged: (val) {
                          setState(() {
                            min = val;
                          });
                        })
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text("SS"),
                    ),
                    NumberPicker(
                        itemWidth: 60.0,
                        minValue: 0,
                        maxValue: 59,
                        value: sec,
                        onChanged: (val) {
                          setState(() {
                            sec = val;
                          });
                        })
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              timetodisplay,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: started ? start : null,
                  child: const Text(
                    "start",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.lightGreen,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 35.0,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: stoped ? null : stop,
                  child: const Text(
                    "stop",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 35.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
