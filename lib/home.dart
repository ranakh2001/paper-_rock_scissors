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
  List<String> messages = ["You win!", "Computer win!", "No one win"];
  String messege = "";
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
          actions: [
            TextButton(
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
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ]),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("images/$randomImagenum.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Computer",
                            style: TextStyle(
                                fontSize: 16, color: Colors.purple[200]),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        "VS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("images/$myImagenum.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "You",
                            style: TextStyle(
                                fontSize: 16, color: Colors.purple[200]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  messege,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
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
                          messege = messages[2];
                        } else if (randomImagenum == 2) {
                          myScore.add(1);
                          computerScore.add(0);
                          messege = messages[0];
                        } else {
                          myScore.add(0);
                          computerScore.add(1);
                          messege = messages[1];
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
                          messege = messages[2];
                        } else if (randomImagenum == 1) {
                          myScore.add(0);
                          computerScore.add(1);
                          messege = messages[1];
                        } else {
                          myScore.add(1);
                          computerScore.add(0);
                          messege = messages[0];
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
                          messege = messages[2];
                        } else if (randomImagenum == 1) {
                          myScore.add(1);
                          computerScore.add(0);
                          messege = messages[0];
                        } else {
                          myScore.add(0);
                          computerScore.add(1);
                          messege = messages[1];
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
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
