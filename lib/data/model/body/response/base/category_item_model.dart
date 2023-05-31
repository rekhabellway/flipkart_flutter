import 'dart:convert';

CategoryItemModel categoryModelFromJson(String str) =>
    CategoryItemModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryItemModel data) =>
    json.encode(data.toJson());

class CategoryItemModel {
  int? id;
  String? offer;
  String? name;
  String? image;
  String? price;

  CategoryItemModel({
    this.id,
    this.offer,
    this.name,
    this.image,
    this.price,
  });

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      CategoryItemModel(
        id: json["id"],
        offer: json["offer"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "offer": offer,
        "name": name,
        "image": image,
        "price": price,
      };
}
