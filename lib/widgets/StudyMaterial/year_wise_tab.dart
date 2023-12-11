import 'package:flutter/material.dart';

class YearWiseTile extends StatelessWidget {
  final String year;
  final String desc;

  const YearWiseTile({super.key, required this.year, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 100,
      width: (MediaQuery.of(context).size.width - 40) / 2,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.black,
          image: DecorationImage(
              opacity: 0.4,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpUJ870f29d47y-h4QQn0trUgkpmS5LQcxE8Q_U91HUA&s"),
              fit: BoxFit.cover)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "$year Year",
          style: const TextStyle(fontSize: 20, color: Colors.amber),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          desc,
          style: const TextStyle(color: Colors.white, fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
