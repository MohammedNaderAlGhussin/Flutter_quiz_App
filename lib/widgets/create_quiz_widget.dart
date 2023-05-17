import 'package:flutter/material.dart';
import 'package:quiz_app_advanced/material_color.dart';

import '../models/quiz_data.dart';

class CreatedQuizWidget extends StatefulWidget {
  List<Quiz> allQuestions;

  CreatedQuizWidget(this.allQuestions);

  @override
  State<CreatedQuizWidget> createState() => _CreatedQuizWidgetState();
}

class _CreatedQuizWidgetState extends State<CreatedQuizWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: widget.allQuestions
            .map((quiz) => questionBuilder(
                  context,
                  quiz.question,
                  [quiz.answer1, quiz.answer2, quiz.answer3, quiz.answer4],
                  quiz.correctAnswer,
                  widget.allQuestions.indexOf(quiz),
                ))
            .toList());
  }

  Container questionBuilder(
      BuildContext context, question, answers, correctAnswer, id) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(238, 238, 238, 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              question ?? "",
              style: const TextStyle(fontSize: 25),
            ),
            trailing: IconButton(
              iconSize: 30,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: primary, fontSize: 15),
                            )),
                        TextButton(
                            onPressed: () {
                              widget.allQuestions
                                  .remove(widget.allQuestions[id]);
                              Navigator.of(context).pop();
                              setState(() {});
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Question deleted")));
                            },
                            child: const Text(
                              "Delete",
                              style: TextStyle(color: primary, fontSize: 15),
                            )),
                      ],
                      title: const Text("Delete Question"),
                      content: const Text(
                        "Are you sure you want to delete this question?",
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ),
          quizAnswers(answers[0], correctAnswer, "A"),
          quizAnswers(answers[1], correctAnswer, "B"),
          quizAnswers(answers[2], correctAnswer, "C"),
          quizAnswers(answers[3], correctAnswer, "D"),
        ],
      ),
    );
  }

  Container quizAnswers(answer, correctAnswer, currunt) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Card(
        color: correctAnswer == currunt ? Colors.green : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            answer,
            style: TextStyle(
                fontSize: 25,
                color: correctAnswer == currunt ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
