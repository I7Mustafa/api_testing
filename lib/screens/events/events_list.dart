import 'package:api_testing/provider/event_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'event_details.dart';

class EventsList extends StatefulWidget {
  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Events')),
      body: Consumer(
        builder: (context, watch, child) {
          final futureEventsListProviders = watch(eventListState);
          return futureEventsListProviders.map(
              data: (_) => EventDetails(event: _.value),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (_) => Center(child: Text(_.error.toString())));
        },
      ),

      // FutureBuilder<List<EventModel>>(
      //   future: EventServices().getListOfEvents(),
      //   builder: (context, snapshot) {
      //     return !snapshot.hasData
      //         ? const Center(child: CircularProgressIndicator())
      //         : EventDetails(event: snapshot.data);
      //   },
      // ),
    );
  }
}
