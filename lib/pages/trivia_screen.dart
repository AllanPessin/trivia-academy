import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:trivia_academy/models/question.dart';
import 'package:trivia_academy/pages/score_screen.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionsList = Question.getQuestionList();

  void verifyResponse() {
    if (answer == questionsList[index].answer) {
      score += 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff374952),
        automaticallyImplyLeading: false,
        title: Image(image: AssetImage('lib/assets/icone.png')),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pergunta ${index + 1}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  questionsList[0].questionText,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3),
                        ),
                      ]),
                  child: RadioListTile(
                    value: 1,
                    title: Text(questionsList[index].option1),
                    groupValue: answer,
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3),
                        ),
                      ]),
                  child: RadioListTile(
                    value: 2,
                    title: Text(questionsList[index].option2),
                    groupValue: answer,
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3),
                        ),
                      ]),
                  child: RadioListTile(
                    value: 3,
                    title: Text(questionsList[index].option3),
                    groupValue: answer,
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3),
                        ),
                      ]),
                  child: RadioListTile(
                    value: 4,
                    title: Text(questionsList[index].option4),
                    groupValue: answer,
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  verifyResponse();
                  if (index < questionsList.length - 1) {
                    setState(() {
                      index += 1;
                      answer = 0;
                    });
                  } else {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => ScoreScreen(maximum: questionsList.length, result: score,)
                      ),
                    );
                  }
                },
                child: Text(
                  "Reponder",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                color: Color(0xfffda0175),
                textColor: Color(0xfff7f7f7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
