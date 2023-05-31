import 'dart:convert';

CategoryTrendModel categoryTrendFromJson(String str) =>
    CategoryTrendModel.fromJson(json.decode(str));

String categoryTrendToJson(CategoryTrendModel data) =>
    json.encode(data.toJson());

class CategoryTrendModel {
  int? id;
  String? name;
  String? image;
  String? title;

  CategoryTrendModel({
    this.id,
    this.name,
    this.image,
    this.title,
  });

  factory CategoryTrendModel.fromJson(Map<String, dynamic> json) =>
      CategoryTrendModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "title": title,
      };
}
