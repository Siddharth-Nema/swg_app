import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swg_flutter/models/Notice.dart';

class NoticesView extends StatelessWidget {
  NoticesView({super.key});

  final List<Notice> notices = [
    Notice(
        heading: 'Summer Analytics',
        description:
            'Here is random desciption about the event. Dont mind reading through this. Its just some random words I wrote to make it look good',
        eventTime: DateTime(2024, 5, 24, 12, 0, 0),
        location: 'V4 Vikramshila',
        host: 'Student Welfare Group')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return NoticeTile(notice: notices[0]);
      },
    );
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
      padding: const EdgeInsets.all(12),
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
              ? Image.asset(
                  'assets/images/event_poster.jpg',
                  height: 150,
                  fit: BoxFit.fitWidth,
                )
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
                    Text(
                      widget.notice.eventTime.toString().substring(0, 20),
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          isExpanded ? Text(widget.notice.description) : const SizedBox(),
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
