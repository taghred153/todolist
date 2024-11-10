import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget{
  final String taskTile;
  const TaskTile({required this.taskTile});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTile,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ),
      ),
    );
  }
}