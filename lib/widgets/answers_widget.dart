import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app_advanced/material_color.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: primary),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "A mobile development framework",
                style: TextStyle(fontSize: 20),
              ),
            )));
    // return Container(
    //     margin: EdgeInsets.all(10),
    //     width: double.infinity,
    //     padding: EdgeInsets.all(20),
    //     decoration: BoxDecoration(
    //         border: Border.all(color: primary),
    //         borderRadius: BorderRadius.circular(15)),
    //     child: const Text("A mobile development framework"));
  }
}
