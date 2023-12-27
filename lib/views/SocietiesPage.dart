import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/models/Society.dart';

class SocietiesPage extends StatefulWidget {
  const SocietiesPage({super.key});

  @override
  State<SocietiesPage> createState() => _SocietiesPageState();
}

class _SocietiesPageState extends State<SocietiesPage> {
  List<Widget> getSocieties() {
    List<Widget> list = [];
    for (Society society in societies) {
      list.add(Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Image(
              image: society.icon ?? const AssetImage('/assets/images/3.png'),
              height: 40,
              width: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  society.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(society.intro ?? '', style: const TextStyle(fontSize: 12))
              ],
            )
          ]),
        ),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: const Color.fromARGB(255, 163, 234, 254),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              "https://cdn.icon-icons.com/icons2/1485/PNG/512/id-card_102342.png",
              scale: 3.5,
            ),
          ),
          const Text(
            "Societies of KGP",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Select and search to know more about the Society",
              style: TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: List.generate(
                  150 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color: index % 2 == 0
                              ? Colors.transparent
                              : Colors.black,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(Icons.search),
              );
            }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
              return List<ListTile>.generate(societies.length, (int index) {
                final String item = societies[index].name;
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  },
                );
              });
            }),
          ),
          ...getSocieties()
        ],
      ),
    );
  }
}
