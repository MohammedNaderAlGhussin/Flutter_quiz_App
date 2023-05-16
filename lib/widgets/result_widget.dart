import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app_advanced/material_color.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

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
            const Text(
              "Oops!",
              style: TextStyle(
                  color: primary, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "images/fail.png",
              width: 200,
              height: 200,
            ),
            const Text(
              "Your Score : 1 / 10",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const Text(
              "Sorry , better luck next time! ",
              style: TextStyle(fontSize: 25),
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
