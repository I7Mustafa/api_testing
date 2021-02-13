import 'package:api_testing/apis/events_services.dart';
import 'package:api_testing/models/event_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventsProvider = Provider.autoDispose((ref) => EventServices());

final eventListState = FutureProvider<List<EventModel>>(
  (ref) async {
    final eventClint = ref.read(eventsProvider);
    return eventClint.getListOfEvents();
  },
);
