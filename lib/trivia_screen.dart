import 'package:flutter/material.dart';
import 'package:trivia_academy_flutter/question.dart';
import 'package:trivia_academy_flutter/score_screen.dart';


class TriviaScreen extends StatefulWidget {
  TriviaScreen({Key key}) : super(key: key);

  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {

  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionList = Question.getQuestionList();

  void verifyAnswer() {
    if(answer==questionList[index].answer) {
      score++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Trivia',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
              width: 1.0,
              color: Colors.black,
              ),
            ),
            width: MediaQuery.of(context).size.width * 1,
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Pergunta #${index+1}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 16,),
                Text(
                  questionList[index].questao,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(1, 3)
                    )]
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text(questionList[index].option1),
                    onChanged: ((int value) {
                      setState(() {
                        answer = value;
                      });
                    }),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(1, 3)
                    )]
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text(questionList[index].option2),
                    onChanged: ((int value) {
                      setState(() {
                        answer = value;
                      });
                    }),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(1, 3)
                    )]
                  ),
                  child: RadioListTile(
                    value: 3,
                    groupValue: answer,
                    title: Text(questionList[index].option3),
                    onChanged: ((int value) {
                      setState(() {
                        answer = value;
                      });
                    }),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(1, 3)
                    )]
                  ),
                  child: RadioListTile(
                    value: 4,
                    groupValue: answer,
                    title: Text(questionList[index].option4),
                    onChanged: ((int value) {
                      setState(() {
                        answer = value;
                      });
                    }),
                  ),
                ),
              ],
            )
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
                  offset: Offset(0, -1)
                )
              ]
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  verifyAnswer();
                  if(index < questionList.length-1) {
                    setState(() {
                      index++;
                      answer = 0;
                    });
                  } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>ScoreScreen(
                          result: score,
                          numberOfQuestions: questionList.length,
                        ))
                      );
                  }
                }, 
                child: Text('Responder',
                  style: TextStyle(fontSize: 16),
                ),
                color: Colors.red[400],
                textColor: Colors.black87,
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}