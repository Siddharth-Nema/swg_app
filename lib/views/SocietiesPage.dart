import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swg_flutter/models/Society.dart';
import 'package:url_launcher/url_launcher.dart';

class SocietiesPage extends StatefulWidget {
  const SocietiesPage({super.key});

  @override
  State<SocietiesPage> createState() => _SocietiesPageState();
}

Future<String> fetchImage(String image_name) async {
  try {
    final ref = FirebaseStorage.instance.ref().child("soc-logos/$image_name");
    String url = await ref.getDownloadURL();
    print(url);
    return url;
  } catch (e) {
    print('Error fetching image: $e');
    return '';
  }
}

class _SocietiesPageState extends State<SocietiesPage> {
  List<Widget> getSocieties(List<Society> societies) {
    List<Widget> list = [];
    for (Society society in societies) {
      list.add(Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            SizedBox(
              height: 40,
              width: 40,
              child: FutureBuilder(
                future: fetchImage(society.image_name),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const Icon(Icons.error);
                    }
                    if (snapshot.hasData) {
                      if (snapshot.data == '') {
                        return const Icon(Icons.error);
                      }
                      return Image.network(
                        snapshot.data!,
                        height: 40,
                        width: 40,
                      );
                    }
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Text(
                society.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // launch(member.fbLink);
                    launchUrl(Uri.parse(society.insta_url));
                  },
                  child: Image.asset(
                    'assets/icons/insta.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    // launch(member.fbLink);
                    launchUrl(Uri.parse(society.facebook_url));
                  },
                  child: Image.asset(
                    'assets/icons/facebook.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    // launch(member.fbLink);
                    launchUrl(Uri.parse(society.linkedin_url));
                  },
                  child: Image.asset(
                    'assets/icons/linked.png',
                    height: 24,
                    width: 24,
                  ),
                ),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Societies',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: const Color.fromARGB(255, 163, 234, 254),
        child: SingleChildScrollView(
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
              FutureBuilder(
                future: Society.getSocities(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const Icon(Icons.error);
                    }
                    if (snapshot.hasData) {
                      // societies = snapshot.data as List<Society>;
                      return Column(
                        children: getSocieties(snapshot.data as List<Society>),
                      );
                    }
                  }
                  return const CircularProgressIndicator();
                },
              ),
              // ...getSocieties()
            ],
          ),
        ),
      ),
    );
  }
}
