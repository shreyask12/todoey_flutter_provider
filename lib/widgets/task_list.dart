
import 'package:flutter/material.dart';
import 'task_tiles.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context,index){
        return Column(
          children: <Widget>[
            TaskTile(
              tasktitle: widget.tasks[index].name,
              isChecked: widget.tasks[index].isDone,
                checkboxCallback : (checkboxstate){
                  setState(() {
                   widget.tasks[index].toggleDone();
                  });
                }
              ),
            // TaskTile(tasktitle: tasks[1].name,isChecked: tasks[1].isDone,),
            // TaskTile(tasktitle: tasks[2].name,isChecked: tasks[2].isDone,),
          ],
        );
      }
      
    );
  }
}