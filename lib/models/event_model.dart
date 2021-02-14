// To parse this JSON data, do
//
//     final eventModel = eventModelFromJson(jsonString);

import 'dart:convert';

List<EventModel> eventModelFromJson(String str) => List<EventModel>.from(
    (json.decode(str) as List).map((x) => EventModel.fromJson(x as Map<String, dynamic>)));

String eventModelToJson(List<EventModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EventModel {
  EventModel({
    this.title,
    this.price,
    this.status,
  });

  final String title;
  final int price;
  final bool status;

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
