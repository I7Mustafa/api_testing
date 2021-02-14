import 'package:api_testing/models/event_model.dart';
import 'package:http/http.dart' as http;

class EventServices {
  Future<List<EventModel>> getListOfEvents() async {
    try {
      final response = await http.get("http://www.enactusnewcairo.org/api/events");
      final List<EventModel> jsonResponse = eventModelFromJson(response.body);
      return jsonResponse;
    } catch (e) {
      return null;
    }
  }
}
