import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:swg_flutter/models/Notice.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticesView extends StatelessWidget {
  NoticesView({super.key});

  final List<Notice> notices = [
    Notice(
        heading: 'Summer Analytics',
        description:
            'Here is random desciption about the event. Dont mind reading through this. Its just some random words I wrote to make it look good at https://swgiitkgp.org/',
        eventTime: DateTime(2024, 5, 18, 12, 0, 0),
        location: 'V4 Vikramshila',
        host: 'Student Welfare Group',
        imageUrl:
            "https://scontent-bom1-2.xx.fbcdn.net/v/t39.30808-6/454002777_901826161983011_327330898801757517_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=qoITUwzuF0YQ7kNvgGKwTdV&_nc_ht=scontent-bom1-2.xx&oh=00_AYAmp3eauo7E2fJWF1EIqKTo225d-GNwJrF6QmAZblLluQ&oe=66B77BB0")
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Notice.getAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error occurred'),
            );
          }
          final notices = snapshot.data as List<Notice>;
          return ListView.builder(
            itemCount: notices.length,
            itemBuilder: (context, index) {
              return NoticeTile(notice: notices[index]);
            },
          );
        });
  }
}

class NoticeTile extends StatefulWidget {
  const NoticeTile({super.key, required this.notice});
  final Notice notice;

  @override
  State<NoticeTile> createState() => _NoticeTileState();
}

class _NoticeTileState extends State<NoticeTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.notice.heading,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
            'By ${widget.notice.host}',
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          isExpanded
              ? (widget.notice.imageUrl != null
                  ? Image.network(widget.notice.imageUrl!)
                  : const SizedBox())
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.pin_drop),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.notice.location,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // widget.notice.eventTime.toString().substring(0, 20),
                          DateFormat.MMMMEEEEd()
                              .format(widget.notice.eventTime),
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          DateFormat.jm().format(widget.notice.eventTime),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          isExpanded
              ? Linkify(
                  onOpen: (link) async {
                    launchUrl(Uri.parse(link.url));
                  },
                  text: widget.notice.description,
                  style: const TextStyle(fontSize: 16.0),
                  linkStyle: const TextStyle(color: Colors.blue),
                )
              : const SizedBox(),
          IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: isExpanded
                  ? const Icon(Icons.keyboard_arrow_up)
                  : const Icon(Icons.keyboard_arrow_down))
        ],
      ),
    );
  }
}
