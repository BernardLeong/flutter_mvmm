import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view_model/todosViewModel.dart';
import 'package:flutter_mvvm_template/model/data/todos_response.dart';
import 'package:flutter_mvvm_template/views/widgets/renderTodos.dart';
import 'package:flutter_mvvm_template/views/widgets/errorWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//can put conditional render here

class _HomePageState extends State<HomePage> {
  List<TodoResponse> getFakeTodos = [];

  Widget renderHomeScreen() {
    if (getFakeTodos.length <= 1) {
      //return
      return const renderError();
    } else {
      return TodoWidget(
        getFakeTodos: getFakeTodos,
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      fetchAllPosts().then((value) => {getFakeTodos = value});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: renderHomeScreen(),
    );
  }
}
