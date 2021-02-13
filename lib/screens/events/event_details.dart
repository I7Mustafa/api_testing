import 'package:api_testing/models/event_model.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  final List<EventModel> event;

  const EventDetails({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: event.length,
      itemBuilder: (context, index) {
        final String state = event[index].status == true ? 'Active' : 'Finished';
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey, width: 0.5),
            borderRadius: BorderRadius.circular(18.0),
            color: const Color(0xff17335B),
          ),
          margin: const EdgeInsets.all(6.0),
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            tileColor: Colors.transparent,
            trailing: RaisedButton(
              onPressed: () async {
                // const url = "http://www.enactusnewcairo.org/#event";
                // if (await canLaunch(url)) {
                //   await launch(url);
                // } else {
                //   throw 'Could not launch $url';
                // }
              },
              elevation: 1.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
              child: const Text('More Info'),
            ),
            title: Text(
              '${event[index].status} ($state)',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text('${event[index].price.toString()} EGP'),
          ),
        );

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Text(event[index]['title'], style: Theme.of(context).textTheme.bodyText1),
        //     SizedBox(height: 20.0),
        //     Text(event[index]['price'].toString())
        //   ],
        // );
      },
    );
  }
}
