import 'package:flutter/material.dart';
import 'tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
    );
  }
}