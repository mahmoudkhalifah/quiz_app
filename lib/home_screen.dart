import 'package:flutter/material.dart';
import 'package:questions_app_session/question.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [
    Question(question: "Are you good?", answer: true),
    Question(question: "Are you smart?", answer: true),
    Question(question: "Are you kind?", answer: true),
    Question(question: "Are you greedy?", answer: false),
    Question(question: "Are you polit?", answer: true),
  ];

  int index = 0;

  List<Icon> results = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            questions[index].question,
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  if (index == 0) {
                    results.clear();
                  }

                  if (questions[index].answer == true) {
                    results.add(Icon(
                      Icons.done,
                      color: Colors.green,
                    ));
                  } else {
                    results.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }

                  if (index < questions.length - 1) {
                    index++;
                  } else {
                    index = 0;
                  }
                  setState(() {});
                },
                color: Colors.green,
                child: Text("yes"),
                textColor: Colors.white,
              ),
              MaterialButton(
                onPressed: () {
                  
                  if (index == 0) {
                    results.clear();
                  }
                  
                  if (questions[index].answer == false) {
                    results.add(Icon(
                      Icons.done,
                      color: Colors.green,
                    ));
                  } else {
                    results.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }

                  if (index < questions.length - 1) {
                    index++;
                  } else {
                    index = 0;
                  }
                  setState(() {});
                },
                color: Colors.red,
                child: Text("no"),
                textColor: Colors.white,
              )
            ],
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: results)
        ],
      ),
    );
  }
}
