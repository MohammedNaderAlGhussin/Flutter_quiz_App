import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/create_quiz_widget.dart';

class CreateQuiz extends StatefulWidget {
  const CreateQuiz({Key? key}) : super(key: key);

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
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
                Navigator.of(context).pushNamed("/addquestion");
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
          Quiz(),
          Quiz(),
          Quiz(),
          Quiz(),
        ],
      ),
    );
  }
}
