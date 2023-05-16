import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            title: const Text(
              "What is Flutter? ",
              style: TextStyle(fontSize: 25),
            ),
            trailing: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ),
          quizAnswers("A mobile development framework"),
          quizAnswers("A database management system"),
          quizAnswers("A programming language"),
          quizAnswers("An operating system"),
        ],
      ),
    );
  }

  Container quizAnswers(answer) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            answer,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
