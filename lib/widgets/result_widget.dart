import 'package:flutter/material.dart';
import 'package:quiz_app_advanced/material_color.dart';

import '../models/quiz_data.dart';

class Result extends StatefulWidget {
  int? score;
  Result(this.score);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.score! > (Quiz.allQuestions.length / 2)
                  ? "Congrats"
                  : "Oops!",
              style: const TextStyle(
                  color: primary, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              widget.score! > (Quiz.allQuestions.length / 2)
                  ? "images/result.jpg"
                  : "images/fail.png",
              width: 200,
              height: 200,
            ),
            Text(
              "Your Score : ${widget.score} / ${Quiz.allQuestions.length}",
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              widget.score! > (Quiz.allQuestions.length / 2)
                  ? "good job"
                  : "Sorry , better luck next time!",
              style: const TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/home");
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(230, 80)),
                  elevation: MaterialStateProperty.all(5),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                child: const Text(
                  "Back to home",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
