import 'package:flutter/material.dart';

import '../models/quiz_data.dart';
import '../widgets/create_quiz_widget.dart';

class CreateQuiz extends StatefulWidget {
  static List<Quiz> allQuestions = [
    Quiz(
        question: "1",
        answer1: "1",
        answer2: "2",
        answer3: "3",
        answer4: "4",
        correctAnswer: "A")
  ];

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create Quiz",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed("/addquestion").then((value) {
                    setState(() {
                      data = value as Map;

                      CreateQuiz.allQuestions.add(Quiz(
                          question: data["question"],
                          answer1: data["answer1"],
                          answer2: data["answer2"],
                          answer3: data["answer3"],
                          answer4: data["answer4"],
                          correctAnswer: data["correctAnswer"]));
                    });
                  });
                });
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
              child: const Text(
                "+  Add new question",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          CreatedQuizWidget(CreateQuiz.allQuestions)
        ],
      ),
    );
  }
}
