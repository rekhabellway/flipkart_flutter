import 'dart:convert';

CategoryModelSuggested categorySuggestedModelFromJson(String str) =>
    CategoryModelSuggested.fromJson(json.decode(str));

String categoryModelToJson(CategoryModelSuggested data) =>
    json.encode(data.toJson());

class CategoryModelSuggested {
  int? id;
  String? name;
  String? image;
  String? price;

  CategoryModelSuggested({
    this.id,
    this.name,
    this.image,
    this.price,
  });

  factory CategoryModelSuggested.fromJson(Map<String, dynamic> json) =>
      CategoryModelSuggested(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "image": image, "price": price};
}
