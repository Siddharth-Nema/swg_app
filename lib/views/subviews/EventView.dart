import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class Event {
  final String title;
  final String description;
  final String image;
  final String date;
  final String time;
  final String venue;

  Event({
    required this.title,
    required this.description,
    required this.image,
    required this.date,
    required this.time,
    required this.venue,
  });
}

final event = Event(
    title: "PDS Doubts Session",
    description: """
Greetings Freshers!

Feeling challenged by the PDS course? Don't worry, we're here to help.

The Student Welfare Group has assembled a team of PDS mentors to guide you through the challenges. We'll help you grasp concepts, clear doubts, and provide valuable practice.
Join us for the PDS Doubt Session, where we'll tackle all your doubts. This interactive offline session will enhance your understanding.

Register at : https://student-welfare-group.com/

See you there!
""",
    image: "event-poster.jpg",
    date: " OCTOBER 13, 1823",
    time: "6:00 PM",
    venue: "CIC LAB");

class EventView extends StatelessWidget {
  const EventView({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/event_poster.jpg')),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 111, 110, 110),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(height: 10),
                          Text(
                            "Date : ${event.date}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          // const SizedBox(height: 10),
                          Text(
                            "Time : ${event.time}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          // const SizedBox(height: 10),
                          Text(
                            "Location : ${event.venue}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 16),
                          // const Divider(),
                        ],
                      ),
                      Linkify(
                        onOpen: (link) async {
                          if (!await launchUrl(Uri.parse(link.url))) {
                            throw Exception('Could not launch ${link.url}');
                          }
                        },
                        text: event.description,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        linkStyle: const TextStyle(
                            color: Color.fromARGB(255, 54, 158, 244)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
