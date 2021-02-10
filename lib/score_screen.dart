import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {

  int result;
  int numberOfQuestions;

  ScoreScreen({Key key, @required this.result,@required this.numberOfQuestions}) 
    : super(key: key);

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
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 113,),
                Text('VOCÊ ACERTOU:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('$result',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w800,
                        color: Colors.redAccent[700]
                        ),
                    ),
                    Text('/$numberOfQuestions',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                        ),
                    )
                  ],
                )
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
                  Navigator.popUntil(context, (route) => route.isFirst);
                }, 
                child: Text('Jogar novamente',
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