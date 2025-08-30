// title : ""
// description : ""
// isDone : true

class TodoModel {
  TodoModel({String? title, String? description, bool? isDone}) {
    _title = title;
    _description = description;
    _isDone = isDone;
  }

  TodoModel.fromJson(dynamic json) {
    _title = json['title'];
    _description = json['description'];
    _isDone = json['isDone'];
  }

  String? _title;
  String? _description;
  bool? _isDone;

  TodoModel copyWith({String? title, String? description, bool? isDone}) =>
      TodoModel(
        title: title ?? _title,
        description: description ?? _description,
        isDone: isDone ?? _isDone,
      );

  String? get title => _title;

  String? get description => _description;

  bool? get isDone => _isDone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['description'] = _description;
    map['isDone'] = _isDone;
    return map;
  }
}
