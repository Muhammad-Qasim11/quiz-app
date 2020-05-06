import 'package:flutter/material.dart';



import 'quiz app.dart';



void main() => runApp(Myapp());



class Myapp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Quiz(),

      debugShowCheckedModeBanner: false,

    );

  }

}



class Quiz extends StatefulWidget {

  @override

  _QuizState createState() => _QuizState();

}



class _QuizState extends State<Quiz> {

  int count = 0;

  final checkIcon = Icon(

    Icons.check,

    color: Colors.black,

    size: 40,

  );

  final crossIcon = Icon(Icons.clear, color: Colors.red, size: 40);

  List<Icon> iconsList = [];





  final List<Question> questionList = [

    Question("Quaideazam is the founder of pakistan ", true),

    Question("pakistan is non islamic country", false),

    Question("Pakistan has atomic power", true),

    Question("Pakistan is richest islamic country", false),

  ];



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.blue,

      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[

          Container(

            height: 200,

            width: 250,

            decoration: BoxDecoration(

              color: Colors.deepOrangeAccent,



            ),

            child: Center(

              child: Padding(

                padding: const EdgeInsets.all(8.0),

                child: Text(

                  questionList[count].text,

                  style: TextStyle(

                      color: Colors.white,

                      fontSize: 15,

                      fontWeight: FontWeight.w100),

                ),

              ),

            ),

          ),

          SizedBox(

            height: 50,

          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[

              Center(

                child: GestureDetector(

                  onTap: () {

                    _checkAns(true);

                  },

                  child: Container(

                    height: 100,

                    width: 100,

                    decoration: BoxDecoration(

                        shape: BoxShape.circle,

                        color: Colors.green,

                        border: Border.all(color: Colors.white12, width: 8)),

                    child: Center(

                      child: Text(

                        "True",

                        style: TextStyle(

                            color: Colors.white,

                            fontSize: 20,

                            fontWeight: FontWeight.w500),

                      ),

                    ),

                  ),

                ),

              ),

              GestureDetector(

                onTap: () {

                  _checkAns(false);

                },

                child: Container(

                  height: 100,

                  width: 100,

                  decoration: BoxDecoration(

                      shape: BoxShape.circle,

                      color: Colors.red,

                      border: Border.all(color: Colors.white12, width: 8)),

                  child: Center(

                    child: Text(

                      "False",

                      style: TextStyle(

                          color: Colors.white,

                          fontSize: 20,

                          fontWeight: FontWeight.w500),

                    ),

                  ),

                ),

              ),

            ],

          ),

          SizedBox(

            height: 40,

          ),

          Center(

            child: Padding(

              padding: const EdgeInsets.all(18.0),

              child: Row(

                children: iconsList,

              ),

            ),

          ),

        ],

      ),

    );

  }



  _checkAns(selectAns) {

    if (selectAns == questionList[count].ans) {

      setState(() {

        iconsList.add(checkIcon);

        if (count < questionList.length - 1) count++;

      });

    } else {

      setState(() {

        iconsList.add(crossIcon);

        if (count < questionList.length - 1) count++;

      });

    }

  }

}
