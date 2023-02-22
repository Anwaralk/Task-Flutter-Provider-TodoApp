import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class ToDoProvider extends ChangeNotifier {
  List<Todo> todos = [
    Todo(id: 1, title: 'first todo'),
    Todo(id: 2, title: 'second todo'),
  ];
  void add(Todo newTodo) {
    todos.add(newTodo);
    notifyListeners();
  }
}
