import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  List<int> myScore;
  List<int> computerScore;
  Score({Key? key, required this.myScore, required this.computerScore})
      : super(key: key);
  List<TableRow> rows() {
    List<TableRow> row = [];
    for (int i = 0; i < myScore.length; i++) {
      row.add(TableRow(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Text(
            "${myScore[i]}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Text(
            "${computerScore[i]}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]));
    }
    return row;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "My Score",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Computer Score",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Table(
              children: rows(),
            ),
          ],
        ),
      ),
    );
  }
}
