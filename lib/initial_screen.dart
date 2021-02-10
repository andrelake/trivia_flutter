import 'package:flutter/material.dart';
import 'package:trivia_academy_flutter/trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red[100],
      child: Column(
        children: [
          SizedBox(
            height: 167,
          ),
          Image(
            image: AssetImage('lib/assets/logo.png')
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Trivia\nAcademy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800
            ),
          ),
          SizedBox(
            height: 88,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>TriviaScreen())
              );
            }, 
            child: Text(
              'Começar',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
            ),
            color: Colors.red[400],
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          )
        ],
      ),
    );
  }
}