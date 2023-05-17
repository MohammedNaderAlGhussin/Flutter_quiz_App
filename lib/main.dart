import 'package:flutter/material.dart';
import 'package:quiz_app_advanced/material_color.dart';
import 'package:quiz_app_advanced/screens/add_new_question_screen.dart';
import 'package:quiz_app_advanced/screens/questions_screen.dart';

import 'screens/create_quiz_screen.dart';
import 'main_drawer.dart';
import 'widgets/result_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/home": (context) => const MyHomePage(),
          "/createquiz": (context) => CreateQuiz(),
          "/addquestion": (context) => const AddNewQuestion(),
          "/questions": (context) => Questions(CreateQuiz.allQuestions)
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: primary),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text(
          "Quiz app",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/quiz.png"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/questions");
              },
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(230, 80)),
                  elevation: MaterialStateProperty.all(5),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
              child: const Text(
                "Let's Start!",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
