import 'package:flutter/material.dart';

InputDecoration myInputDecoration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    fillColor: Colors.white70,
    filled: true,
    border: OutlineInputBorder(),
    labelText: label,
  );
}

TextStyle myTextStyle(){
  return TextStyle(
    fontSize: 30,
    color: Colors.red,
    fontWeight: FontWeight.w800
  );
}

ButtonStyle myButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    )
  );
}