import 'dart:convert';

CategoryCarouselModel categoryCarouselModelFromJson(String str) =>
    CategoryCarouselModel.fromJson(json.decode(str));

String categoryCarouselModelToJson(CategoryCarouselModel data) =>
    json.encode(data.toJson());

class CategoryCarouselModel {
  int? id;
  String? image;

  CategoryCarouselModel({
    this.id,
    this.image,
  });

  factory CategoryCarouselModel.fromJson(Map<String, dynamic> json) =>
      CategoryCarouselModel(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
