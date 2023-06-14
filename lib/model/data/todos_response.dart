import 'package:json_annotation/json_annotation.dart';
part 'todos_response.g.dart';

@JsonSerializable()
class TodoResponse {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoResponse(this.userId, this.id, this.title, this.completed);

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TodoResponseToJson(this);

  @override
  String toString() {
    return 'TodoResponse{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
