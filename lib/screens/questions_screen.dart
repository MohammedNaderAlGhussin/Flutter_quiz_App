import 'package:flutter/material.dart';
import 'package:quiz_app_advanced/material_color.dart';

import '../models/quiz_data.dart';

import '../widgets/result_widget.dart';

class Questions extends StatefulWidget {
  List<Quiz> allQuestions;

  Questions(this.allQuestions);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int currentIndex = 0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: currentIndex >= widget.allQuestions.length
          ? Result(score)
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Question ${currentIndex + 1}",
                      style: const TextStyle(
                          color: primary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " /${widget.allQuestions.length}",
                      style: const TextStyle(fontSize: 20, color: Colors.grey),
                    )
                  ],
                ),
                questionBuilder(widget.allQuestions[currentIndex].question),
                answerBuilder(widget.allQuestions[currentIndex].answer1,
                    widget.allQuestions[currentIndex].correctAnswer, "A"),
                answerBuilder(widget.allQuestions[currentIndex].answer2,
                    widget.allQuestions[currentIndex].correctAnswer, "B"),
                answerBuilder(widget.allQuestions[currentIndex].answer3,
                    widget.allQuestions[currentIndex].correctAnswer, "C"),
                answerBuilder(widget.allQuestions[currentIndex].answer4,
                    widget.allQuestions[currentIndex].correctAnswer, "D"),
              ],
            ),
    );
  }

  Container answerBuilder(answer, correctAnswer, current) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: InkWell(
          onTap: () {
            setState(() {
              currentIndex++;
              if (correctAnswer == current) {
                score += 1;
              }
            });
          },
          child: Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: primary),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  answer,
                  style: const TextStyle(fontSize: 20),
                ),
              )),
        ));
  }

  Container questionBuilder(question) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: primary,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            question ?? "",
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
