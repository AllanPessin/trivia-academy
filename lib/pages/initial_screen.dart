import 'package:flutter/material.dart';

import 'trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 167.0,
          ),
          Image(
            image: AssetImage('lib/assets/logo.png')
          ),
          SizedBox(
            height: 24.0,
          ),
          Text('Trivia\nAcademy',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 38.0,
          ),
          FlatButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TriviaScreen()),
            );
          }, 
          child: Text('Começar',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              ),
            ),
          color: Color(0xffda0175),
          textColor: Color(0xfff7f7f7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            ),
          padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          )
        ],
      ),
    );
  }
}