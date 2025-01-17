class OfIntermediate {
  String? id;
  String? level;
  String? name;
  String? description;

  OfIntermediate({this.id, this.level, this.name, this.description});

  OfIntermediate.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    level = json["level"];
    name = json["name"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["level"] = level;
    _data["name"] = name;
    _data["description"] = description;
    return _data;
  }

  static List<OfIntermediate> speed(List value) {
    return value.map((e) => OfIntermediate.fromJson(e)).toList();
  }
}
