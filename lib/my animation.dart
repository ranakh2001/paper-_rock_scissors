import 'dart:async';

import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  double scale = 1;
  Duration d = const Duration(seconds: 2);
  double turns = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          curve: Curves.bounceIn,
          turns: turns,
          duration: d,
          child: TextButton(
            onPressed: () {
              setState(() {
                turns += 1;
                scale = 2;
              });
              Timer(d, () {
                setState(() {
                  scale = 1;
                });
              });
            },
            child: const Icon(
              Icons.alarm,
              size: 40,
            ),
          ),
        ),
        // child: AnimatedScale(
        //     scale: scale,
        //     duration: const Duration(microseconds: 250),
        //     child: TextButton(
        //         onPressed: () {
        //           setState(() {
        //             scale = 2;
        //           });
        //           Timer(const Duration(microseconds: 250), () {
        //             setState(() {
        //               scale = 1;
        //             });
        //           });
        //         },
        //         child: Icon(Icons.alarm))),
      ),
    );
  }
}
