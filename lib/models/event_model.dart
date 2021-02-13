// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class EventModel {
  EventModel({
    this.title,
    this.price,
    this.status,
  });

  final String title;
  final int price;
  final bool status;

  factory EventModel.fromRawJson(String str) =>
      EventModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        title: json["title"] as String,
        price: json["price"] as int,
        status: json["status"] as bool,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "status": status,
      };
}
