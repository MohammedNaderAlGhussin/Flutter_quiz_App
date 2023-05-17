class Quiz {
  static List<Quiz> allQuestions = [
    Quiz(
        question: "What is Flutter?",
        answer1: "A mobile development framework",
        answer2: "A database management system",
        answer3: "A programming Language",
        answer4: "An operating system",
        correctAnswer: "A"),
    Quiz(
        question: "What Programming language is used in Flutter",
        answer1: "Java",
        answer2: "Dart",
        answer3: "Swift",
        answer4: "Python",
        correctAnswer: "B"),
    Quiz(
        question:
            "What is the purpose of the pubspec.yaml file in flutter app?",
        answer1: "To run the app",
        answer2: "To specify dependencies",
        answer3: "To configure the app's apperence",
        answer4: "To do nothing",
        correctAnswer: "B"),
    Quiz(
        question: "What is Flutter Widget",
        answer1: "A database table",
        answer2: "A programming language",
        answer3: "A graphical user interface element",
        answer4: "A type of animation",
        correctAnswer: "C"),
    Quiz(
        question: "What is a stateful widget in Flutter",
        answer1: "A widget that doesn't change",
        answer2: "A wiget that can be updated over time",
        answer3: "A widget that only changes once",
        answer4: "A widget that doesn't have any data",
        correctAnswer: "B"),
  ];

  String? question;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  String? correctAnswer;
  Quiz(
      {required this.question,
      required this.answer1,
      required this.answer2,
      required this.answer3,
      required this.answer4,
      required this.correctAnswer});
}
