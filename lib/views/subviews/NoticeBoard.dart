import 'package:flutter/material.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({super.key});

  @override
  State<NoticeBoard> createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Welcome to Notice Board',
              style: TextStyle(color: Colors.black),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Notices',
                ),
                Tab(
                  text: 'Events',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Notices'),
              ),
              Center(
                child: Text('Events'),
              ),
            ],
          ),
        ));
  }
}
