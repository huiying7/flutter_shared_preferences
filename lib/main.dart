import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _incrementCounter,
          child: Text('Increment Counter'),
        ),
      ),
    ),
  ));
}

_incrementCounter() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  int counter = (preferences.getInt('counter') ?? 0) + 1;
  print('Pressed $counter times');
  await preferences.setInt('counter', counter);
}
