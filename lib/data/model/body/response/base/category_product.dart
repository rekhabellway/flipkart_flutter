import 'dart:convert';

CategoryProductModel categoryProductModelFromJson(String str) =>
    CategoryProductModel.fromJson(json.decode(str));

String categoryProductModelToJson(CategoryProductModel data) =>
    json.encode(data.toJson());

class CategoryProductModel {
  int? id;
  String? name;
  String? image;
  String? title;

  CategoryProductModel({
    this.id,
    this.name,
    this.image,
    this.title,
  });

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) =>
      CategoryProductModel(
        id: json["id"],
        name: json["name"],
        image: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "title": title,
      };
}
