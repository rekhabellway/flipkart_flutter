import 'dart:convert';
import 'dart:ui';

CategoryFlipkartModel categoryFlipkartModelFromJson(String str) =>
    CategoryFlipkartModel.fromJson(json.decode(str));

String categoryFlipkartModelToJson(CategoryFlipkartModel data) =>
    json.encode(data.toJson());

class CategoryFlipkartModel {
  int? id;
  String? name;
  String? image;
  Color? color;

  CategoryFlipkartModel({
    this.id,
    this.name,
    this.image,
    this.color,
  });

  factory CategoryFlipkartModel.fromJson(Map<String, dynamic> json) =>
      CategoryFlipkartModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "color": color,
      };
}
