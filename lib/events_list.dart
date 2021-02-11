import 'package:api_testing/event_model.dart';
import 'package:flutter/material.dart';

import 'event_details.dart';
import 'events.dart';

class EventsList extends StatefulWidget {
  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Events')),
      body: FutureBuilder<List<EventModel>>(
        future: EventServices().getListOfEvents(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? const Center(child: CircularProgressIndicator())
              : EventDetails(event: snapshot.data);
        },
      ),
    );
  }
}
