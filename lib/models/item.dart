// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  Model model;
  int pk;
  Fields fields;

  Item({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  String brand;
  String model;
  int amount;
  String engineSpec;
  int user;

  Fields({
    required this.brand,
    required this.model,
    required this.amount,
    required this.engineSpec,
    required this.user,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        brand: json["brand"],
        model: json["model"],
        amount: json["amount"],
        engineSpec: json["engine_spec"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "brand": brand,
        "model": model,
        "amount": amount,
        "engine_spec": engineSpec,
        "user": user,
      };
}

enum Model { APPMAIN_ITEM }

final modelValues = EnumValues({"appmain.item": Model.APPMAIN_ITEM});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
