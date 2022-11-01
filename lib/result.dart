import 'package:flutter/material.dart';
class Result extends StatelessWidget {
 final VoidCallback resethandler;
final int resultScore;
Result(this.resultScore,this.resethandler);

String get resultPhrase{
String resultText = 'You did it!';
   if(resultScore<= 8){
      resultText='You are awsome';
       }
       else if(resultScore<=12){
        resultText ='You are likeable';}
        else if(resultScore<= 16){
           resultText= 'You are strange';
            }
           else{
             resultText='you are bad';
         
             }   
         return resultText;
         }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
         Text(
        resultPhrase,
         style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
         textAlign: TextAlign.center,
         ),
         FlatButton(
          child: Text('Reset Quiz'),
           textColor: Colors.blue,
          onPressed: resethandler ),
        ]
      ),
         );
  }
}