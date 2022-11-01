
// import 'package:flutter/material.dart';

// FlatButton(
//   Child: Text('Flat Button'),
//   textColor: Colors.blue,
//   onPressed: (){
//     print('Pressed an elevated Button');
//   },
// ),

// Alternatives for FlatButtons is TextButton

// TextButton(
//   Child: Text('Flat Button'),
//   style: TextButton.styleFrom(primary: Colors.blue),
//   onPressed: (){
//     print('Pressed an Text Button');
//   },
// ),


// OutlineButton(
//   borderSide: BorderSide(color: Colors.blue),
//   Child: Text('Flat Button'),
//   textColor: Colors.blue,
//   onPressed: (){
//     print('Pressed an elevated Button');
//   },
// ),

// Alternatives for Outline Button is OutlinedButton

// OutlinedButton(
//   borderSide: BorderSide(color: Colors.blue),
//   Child: Text('Flat Button'),
//   style: OutlinedButton.styleFrom(primary: Colors.orange, side: BorderSide(color: Colors.orange) )
//   onPressed: (){
//     print('Pressed an elevated Button');
//   },
// ),

// RaisedButton(
//   color: Colors.blue,
//   textColor: Colors.white,
//   Child: Text('Raised Button'),
//   onPressed: (){
//     print('Pressed an elevated Button');
//   },
// ),

// Alternatives for Raised Buttons is Elevated Buttons

// ElevatedButton(
  
//   style: ButtonStyle(
//     backgroundColor: MaterialStateProperty.all(Colors.blue), // Additional we can do this 
//     foregroundColor: MaterialStateProperty.all(Colors.White), // Additionally we can do this.
//   )
//   or 

//   style: ElevatedButton.styleFrom(primary: Colors.blue, onPrimary:Colors.orange),

//   Child: Text('Elevated Button'),
//   onPressed: (){
//     print('Pressed an elevated Button');
//   },
// ),

// // *  Elevated Buttons automatically picks the theme color, also styling becomes easy. 
//  // in the nes types of buttons we dont have to specify individually all the styling elements 