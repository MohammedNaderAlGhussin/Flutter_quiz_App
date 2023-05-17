import 'package:flutter/material.dart';

class AddNewQuestion extends StatefulWidget {
  const AddNewQuestion({Key? key}) : super(key: key);

  @override
  State<AddNewQuestion> createState() => _AddNewQuestion();
}

class _AddNewQuestion extends State<AddNewQuestion> {
  String dropDownValue = "A";
  var questionController = TextEditingController();
  var firstController = TextEditingController();
  var secondAnswerController = TextEditingController();
  var thirdAnswerController = TextEditingController();
  var forthAnswerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add new question",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: questionController,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  contentPadding: const EdgeInsets.all(25),
                  label: const Text("Question"),
                  hintText: "Enter the question",
                  prefixIcon: const Icon(Icons.question_mark)),
            ),
          ),
          answersTextField("First Answer", "A", Colors.yellow, firstController),
          answersTextField(
              "Second Answer", "B", Colors.green, secondAnswerController),
          answersTextField(
              "Third Answer", "C", Colors.grey, thirdAnswerController),
          answersTextField(
              "Forth Answer", "D", Colors.red, forthAnswerController),
          ListTile(
            leading: const Text(
              "Select the correct Answer",
              style: TextStyle(fontSize: 24),
            ),
            title: DropdownButton(
              isExpanded: true,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
              value: dropDownValue,
              items: const [
                DropdownMenuItem(
                  value: "A",
                  child: Center(
                    child: Text(
                      "A",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: "B",
                  child: Center(
                    child: Text("B", textAlign: TextAlign.center),
                  ),
                ),
                DropdownMenuItem(
                  value: "C",
                  child: Center(child: Text("C", textAlign: TextAlign.center)),
                ),
                DropdownMenuItem(
                  value: "D",
                  child: Center(child: Text("D", textAlign: TextAlign.center)),
                ),
              ],
              onChanged: (val) {
                setState(() {
                  dropDownValue = val as String;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                Map data = {
                  "question": questionController.text,
                  "answer1": firstController.text,
                  "answer2": secondAnswerController.text,
                  "answer3": thirdAnswerController.text,
                  "answer4": forthAnswerController.text,
                  "correctAnswer": dropDownValue
                };

                setState(() {
                  Navigator.of(context).pop(data);
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
                "Add Question",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile answersTextField(labelText, circleLetter, circlecolor, controller) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: circlecolor,
          radius: 25,
          child: Text(
            circleLetter,
            style:const TextStyle(fontSize: 20, color: Colors.white),
          )),
      title: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          contentPadding: const EdgeInsets.all(25),
          label: Text(labelText),
        ),
      ),
    );
  }
}
