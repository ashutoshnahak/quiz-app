import './result.dart';
import './quiz.dart';
import 'package:flutter/material.dart';   
import 'dart:ui';
// import './question.dart';
// import './answer.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
    @override
  
  State<StatefulWidget> createState() {
    // TODO: implement createState
  
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
      var _questionIndex = 0;
      var _totalscore =0;
      var questions = [
      {'questionText' : 'What\'s your fav color ? ', 
       'answers' :[{'text': 'Black', 'score' : 5}, {'text': 'Red', 'score' : 4}, {'text': 'Blue', 'score': 3}, {'text':'White', 'score': 2}],
      },
      {'questionText' : 'What\'s your fav animal ? ', 
      'answers' :[{'text':'Tiger','score': 5}, {'text':'Zebra', 'score': 4}, {'text':'Deer', 'score': 3}, {'text': 'Wolf', 'score': 2}],
      },
      {'questionText' : 'What\'s your fav Bird ? ', 
      'answers' :[{'text':'Eagle', 'score': 5}, {'text':'Penguin', 'score': 4}, {'text':'Sparrow','score': 3}, {'text': 'Pegion', 'score': 2}],
      },
    ];
    void _resetQuiz(){
      setState(() {
        _questionIndex=0;
      _totalscore=0;
      });
      
    }
  void answerQuestion(int score) {
    _totalscore= _totalscore + score;
    if(_questionIndex<questions.length){

    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context){
    // var questions = [
    //   {'questionText' : 'What\'s your fav color ? ', 
    //   'answers' :['Black', 'Red', 'Blue', 'White'],
    //   },
    //   {'questionText' : 'What\'s your fav animal ? ', 
    //   'answers' :['Tiger', 'Zebra', 'Deer', 'Wolf'],
    //   },
    //   {'questionText' : 'What\'s your fav Bird ? ', 
    //   'answers' :['Eagle', 'Penguin', 'Sparrow', 'Pegion'],
    //   },
    // ];
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
     ), // AppBar
      body :_questionIndex < questions.length ? Quiz(answerQuestion: answerQuestion, questions:  questions, questionIndex: _questionIndex,)
      // Column(
      // children: [ 
      //      Question(questions[questionIndex]['questionText']as String),
      //      ...(questions[questionIndex]['answers']as List<String>).map((answer){
      //        return Answers(answerQuestion, answer);
      //      }).toList()
           
      //      //Answers(answerQuestion),
      //      //Answers(answerQuestion),
      //      //Answers(answerQuestion),
            
      //      // RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
      //     ],
      //  )
       : Result(_totalscore, _resetQuiz)
       // Center(child: Text('you did it'))
       ,//column
      ), // Scaffold
    );//Material app
  }
}