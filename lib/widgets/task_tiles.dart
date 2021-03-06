import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  final bool isChecked;
  final String tasktitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked,this.tasktitle,this.checkboxCallback});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// checkboxState: isChecked,
//         togglecheckboxState: (bool checkboxState){
//           setState(() {
//               isChecked = checkboxState;
//           });
//         },

