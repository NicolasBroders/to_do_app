import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String task;
  final bool isChecked;

  TaskWidget({this.task, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          task,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: null,
        ),
      ],
    );
  }
}

//(bool newValue) {
//setState(() {
//isChecked = newValue;
//});
//}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBox;

  TaskCheckBox({this.checkBoxState, this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBox,
    );
  }
}
