import 'dart:convert';

import 'package:api_testing/event_model.dart';
import 'package:http/http.dart' as http;

class EventServices {
  Future<List<EventModel>> getListOfEvents() async {
    try {
      final response = await http.get("http://www.enactusnewcairo.org/api/events");
      final List<EventModel> jsonResponse = (jsonDecode(response.body) as List)
          .map((event) => EventModel.fromJson(event as Map<String, dynamic>))
          .toList();

      return jsonResponse;
    } catch (e) {
      return null;
    }
  }
}
