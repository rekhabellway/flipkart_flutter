import 'dart:convert';

CategoryShopModel categoryShopModelFromJson(String str) =>
    CategoryShopModel.fromJson(json.decode(str));

String categoryShopModelToJson(CategoryShopModel data) =>
    json.encode(data.toJson());

class CategoryShopModel {
  int? id;
  String? name;
  String? title;
  String? images;
  String? image;

  CategoryShopModel({
    this.id,
    this.name,
    this.title,
    this.images,
    this.image,
  });

  factory CategoryShopModel.fromJson(Map<String, dynamic> json) =>
      CategoryShopModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        image: json["image"],
        images: json["images"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "images": images,
        "image": image,
      };
}
