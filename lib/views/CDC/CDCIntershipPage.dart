import 'package:flutter/material.dart';

class CDCIntershipPage extends StatelessWidget {
  const CDCIntershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 36,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 28,
          ),
        ],
        centerTitle: true,
        title: const Text(
          "CDC Internship Blogs",
          style: TextStyle(color: Colors.black),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 163, 234, 254),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 75.0, horizontal: 30.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/internship.png',
                  scale: 5,
                ),
                const Text(
                  "CDC Intership",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '"Mistakes are the best lessons, while Experience is the best teacher" -- Read through the Experiences of seniors who bagged CDC Internships',
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    color: const Color.fromARGB(255, 163, 234, 254),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                      )
                    ],
                  ),
                  margin: const EdgeInsets.all(12.0),
                  child: const SizedBox(
                    // height: 75,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://img.icons8.com/fluency/48/programming.png")),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Software",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("Development, DSA and CP")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    color: const Color.fromARGB(255, 163, 234, 254),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 106, 106, 106)
                            .withOpacity(.5),
                        blurRadius: 20.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: const Offset(
                          5.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.all(12.0),
                  child: const SizedBox(
                    // height: 75,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://img.icons8.com/fluency/48/sell.png")),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("Product life cycle and KPIs")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
