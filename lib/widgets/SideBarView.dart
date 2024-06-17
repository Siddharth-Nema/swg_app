import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';

class SideBarView extends StatelessWidget {
  const SideBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: GlobalStyles.kPrimaryBlueColor.withOpacity(0.8),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 75,
                            bottom: 10,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(Icons.edit, size: 16),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      const InkWell(
                        child: Text(
                          "View Profile",
                          style: TextStyle(
                              color: Color.fromARGB(255, 33, 149, 243),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Options(title: "Study Material", route: '/studymaterial'),
                      Options(
                        title: "Know your departments",
                        route: '/knowyourdep',
                      ),
                      Options(title: "Societies of KGP", route: '/societies'),
                      Options(
                        title: "Featured Blogs",
                        route: '/cdcinternshipblogs',
                      ),
                      Options(
                          title: "Benifits of Insti-ID",
                          route: '/benefitsofinsti'),
                      Options(title: "Our Team"),
                      Options(title: "Contact Us"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String title;
  final String route;
  const Options({
    required this.title,
    super.key,
    this.route = '/',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              style: BorderStyle.solid,
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
