import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {

  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum}) : super(key: key);

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
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 113,
                ),
                Text("Você Acertou:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('$result',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffe83b86),
                      ),
                    ),
                    Text('/ $maximum',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff263238)
                      ),
                    ),
                  ],
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
                onPressed: (() {
                  Navigator.popUntil(context, (route) => route.isFirst);
                }),
                child: Text(
                  "Jogar Novamente",
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
