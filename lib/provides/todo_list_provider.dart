import 'package:flutter/material.dart';
import '../models/todo_list_model.dart';
import '../services/todo_list_service.dart';

class TaskProvider extends ChangeNotifier {
  TaskModel? _taskModel;
  Future<void> Getdata() async {
    _taskModel = await TaskService.getTask();
    notifyListeners();
  }
  Future<void> addTask(String todo) async{
    await TaskService.addItem(todo: todo);
    _taskModel = await TaskService.getTask();
    _taskModel?.tasks.add({"todo": todo,"completed": false,"userId": 1});
    _taskModel?.total +=1;
    notifyListeners();
  }
}