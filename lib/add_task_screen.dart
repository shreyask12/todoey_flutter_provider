import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget { 

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override

  Widget build(BuildContext context) {

  // TextEditingController addTasktextfield = TextEditingController();
  String newTasktile;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style:
              TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                ),
              ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTasktile = newText;
                // print(newTasktile);
              },
              
            ),
            FlatButton(
              child: Text('Add',
              style : TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: (){
                // print(newTasktile);
                addTaskCallback(newTasktile);
              }
            ),
          ],
        ),
      ),
    );
  }
}