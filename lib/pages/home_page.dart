import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/widgets/todo_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/tool_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoProvider = context.watch<ToDoProvider>().todos;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todo"),
          backgroundColor: Colors.amber.shade300,
          actions: [
            IconButton(
              onPressed: () => GoRouter.of(context).push('/add'),
              icon: const Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: todoProvider.length,
          itemBuilder: (context, index) => TodoTile(
            todo: Todo(
              id: todoProvider[index].id,
              title: todoProvider[index].title,
            ),
          ),
        ));
  }
}
