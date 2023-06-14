import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_mvvm_template/model/data/todos_response.dart';
part 'ApiClient.g.dart';

// https://vulcan-smartvision.azurewebsites.net/api/v1.0/cloud
// "http://10.0.2.2:4004/api/v1.0/cloud"
// https://d1d1-220-255-192-134.ap.ngrok.io/api/v1.0/cloud
@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // @POST("/auth/login")
  // Future<LoginResponse> login(@Body() HashMap<String, String> loginMap);

  @GET("/todos")
  Future<List<TodoResponse>> getFakeTodos();
}
