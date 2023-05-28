import 'dart:math';

import 'package:flutter/material.dart';

import 'score.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int randomImagenum;
  late int myImagenum;
  late List<int> myScore;
  late List<int> computerScore;
  @override
  void initState() {
    setState(() {
      randomImagenum = Random().nextInt(3) + 1;
      myImagenum = Random().nextInt(3) + 1;
      myScore = [];
      computerScore = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rock Paper Scissors"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 30,
                    height: 30,
                    child: Image.asset("images/1.png"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 30,
                    height: 30,
                    child: Image.asset("images/2.png"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset("images/3.png"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset("images/$randomImagenum.png"),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset("images/$myImagenum.png"),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        randomImagenum = Random().nextInt(3) + 1;
                        myImagenum = 1;
                        if (randomImagenum == 1) {
                          myScore.add(1);
                          computerScore.add(1);
                        } else if (randomImagenum == 2) {
                          myScore.add(1);
                          computerScore.add(0);
                        } else {
                          myScore.add(0);
                          computerScore.add(1);
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      width: 100,
                      height: 100,
                      child: Image.asset("images/1.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        randomImagenum = Random().nextInt(3) + 1;
                        myImagenum = 2;
                        if (randomImagenum == 2) {
                          myScore.add(1);
                          computerScore.add(1);
                        } else if (randomImagenum == 1) {
                          myScore.add(0);
                          computerScore.add(1);
                        } else {
                          myScore.add(1);
                          computerScore.add(0);
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      width: 100,
                      height: 100,
                      child: Image.asset("images/2.png"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        randomImagenum = Random().nextInt(3) + 1;
                        myImagenum = 3;
                        if (randomImagenum == 3) {
                          myScore.add(1);
                          computerScore.add(1);
                        } else if (randomImagenum == 1) {
                          myScore.add(1);
                          computerScore.add(0);
                        } else {
                          myScore.add(0);
                          computerScore.add(1);
                        }
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset("images/3.png"),
                    ),
                  ),
                ],
              ),
              Container(
                width: 300,
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Score(
                                  myScore: myScore,
                                  computerScore: computerScore,
                                )),
                      );
                    },
                    child: const Text(
                      "Score",
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
