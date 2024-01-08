import 'package:flutter/material.dart';

class MemberInfoTile extends StatelessWidget {
  final String name;
  final String position;
  const MemberInfoTile({super.key, required this.name, required this.position});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              ),
              Text(
                position,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
              const SizedBox(
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
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://placehold.co/100x100/png"),
                fit: BoxFit.cover),
            color: Colors.amber,
            borderRadius: BorderRadius.circular(24),
          ),
        )
      ]),
    );
  }
}
