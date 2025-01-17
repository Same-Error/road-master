class OfIntro {
  String? id;
  String? level;
  String? name;
  String? description;

  OfIntro({this.id, this.level, this.name, this.description});

  OfIntro.fromJson(Map<String, dynamic> json) {
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

  static List<OfIntro> intro(List value) {
    return value.map((e) => OfIntro.fromJson(e)).toList();
  }
}
