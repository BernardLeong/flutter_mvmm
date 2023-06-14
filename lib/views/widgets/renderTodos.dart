import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/model/data/todos_response.dart';

class TodoWidget extends StatelessWidget {
  final List<TodoResponse> getFakeTodos;
  const TodoWidget({super.key, required this.getFakeTodos});

  Widget renderListOfTodos() {
    getFakeTodos
        .map((todo) => Container(
              child: Text("${todo.title}"),
            ))
        .toList();

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return renderListOfTodos();
  }
}
