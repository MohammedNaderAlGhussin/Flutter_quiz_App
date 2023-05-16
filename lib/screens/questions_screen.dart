import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app_advanced/material_color.dart';

import '../widgets/answers_widget.dart';
import '../widgets/question_widget.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Question 1",
                style: TextStyle(
                    color: primary, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                " /10",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              )
            ],
          ),
          question(),
          Answer(),
          Answer(),
          Answer(),
          Answer(),
        ],
      ),
    );
  }
}
