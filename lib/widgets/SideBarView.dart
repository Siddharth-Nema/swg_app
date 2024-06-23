import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';

class SideBarView extends StatelessWidget {
  final Function(int) changeIndex;
  const SideBarView({super.key, required this.changeIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 4),
      decoration: BoxDecoration(
        color: GlobalStyles.kPrimaryBlueColor.withOpacity(0.9),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Options(
                      title: "Study Material",
                      route: '/studymaterial',
                      onClick: () {
                        Navigator.of(context).pop();
                        changeIndex(0);
                      },
                    ),
                    const Options(
                      title: "Know your departments",
                      route: '/knowyourdep',
                    ),
                    const Options(
                        title: "Societies of KGP", route: '/societies'),
                    const Options(
                      title: "Featured Blogs",
                      route: '/cdcinternshipblogs',
                    ),
                    const Options(
                        title: "Benifits of Insti-ID",
                        route: '/benefitsofinsti'),
                    const Options(title: "Our Team", route: '/ourteam'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String title;
  final String route;
  final void Function()? onClick;
  const Options({
    required this.title,
    super.key,
    this.route = '/',
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick ??
          () {
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
