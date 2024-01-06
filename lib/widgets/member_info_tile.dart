import 'package:flutter/material.dart';

class MemberInfoTile extends StatelessWidget {
  final String name;
  final String position;
  const MemberInfoTile({super.key, required this.name, required this.position});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
              Text(
                position,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/20/20837.png",
                    scale: 30,
                    color: Colors.white,
                  ),
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/3128/3128219.png",
                    scale: 30,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        Image.network("https://placehold.co/100x100/png")
      ]),
    );
  }
}
