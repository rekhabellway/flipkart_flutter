import 'dart:convert';

CategoryModelItemDiscount categoryModelFromJson(String str) =>
    CategoryModelItemDiscount.fromJson(json.decode(str));

String categoryModelToJson(CategoryModelItemDiscount data) =>
    json.encode(data.toJson());

class CategoryModelItemDiscount {
  int? id;
  String? name;
  String? name1;
  String? image;
  String? images;
  String? title;
  String? title1;

  CategoryModelItemDiscount({
    this.id,
    this.name,
    this.name1,
    this.image,
    this.images,
    this.title,
    this.title1,
  });

  factory CategoryModelItemDiscount.fromJson(Map<String, dynamic> json) =>
      CategoryModelItemDiscount(
        id: json["id"],
        name: json["name"],
        name1: json["name1"],
        image: json["image"],
        images: json["images"],
        title: json["title"],
        title1: json["title1"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name1": name1,
        "image": image,
        "images": images,
        "title": title,
        "title1": title1,
      };
}
