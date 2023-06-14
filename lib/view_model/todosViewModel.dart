import 'dart:async';
import 'package:flutter_mvvm_template/model/services/service_locator.dart';
import 'package:flutter_mvvm_template/model/network/ApiClient.dart';
import 'package:flutter_mvvm_template/model/data/todos_response.dart';

Future<List<TodoResponse>> fetchAllPosts() async {
  RestClient client = serviceLocator.get(instanceName: "client");
  List<TodoResponse> listResponse = await client.getFakeTodos();
  return listResponse;
}
