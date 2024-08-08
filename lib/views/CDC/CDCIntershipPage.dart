import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';

class CDCIntershipPage extends StatelessWidget {
  const CDCIntershipPage({super.key});

  final List<Map> CDCFields = const [
    {
      "name": "Data",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/9672/9672242.png"
    },
    {
      "name": "Software",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/8759/8759045.png"
    },
    {
      "name": "Finance",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/781/781831.png"
    },
    {
      "name": "Core",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/825/825741.png"
    },
    {
      "name": "Quant",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/13079/13079983.png"
    },
    {
      "name": "Product",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/8567/8567886.png"
    },
    {
      "name": "FMCG",
      "iconURL": "https://cdn-icons-png.flaticon.com/512/4249/4249135.png"
    }
  ];

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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: GlobalStyles.kPrimaryBlueColor,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/internship.png',
                scale: 6,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "CDC Internship",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Text(
              //     '"Mistakes are the best lessons, while Experience is the best teacher" -- Read through the Experiences of seniors who bagged CDC Internships',
              //     style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
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
              SizedBox(
                height: 620,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: CDCFields.length,
                    itemBuilder: (context, index) => Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: const Color.fromARGB(255, 163, 234, 254),
                          // decoration: const BoxDecoration(
                          //       borderRadius:
                          //           const BorderRadius.all(Radius.circular(12.0)),
                          //       color: const Color.fromARGB(255, 163, 234, 254),
                          //     ),

                          margin: const EdgeInsets.symmetric(vertical: 6.0),
                          child: SizedBox(
                            height: 75,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        CDCFields[index]['iconURL']),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          CDCFields[index]['name'].toString(),
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}






// Container(
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(Radius.circular(12.0)),
//                   color: const Color.fromARGB(255, 163, 234, 254),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 106, 106, 106)
//                           .withOpacity(.5),
//                       blurRadius: 20.0, // soften the shadow
//                       spreadRadius: 0.0, //extend the shadow
//                       offset: const Offset(
//                         5.0, // Move to right 10  horizontally
//                         5.0, // Move to bottom 10 Vertically
//                       ),
//                     )
//                   ],
//                 ),
//                 margin: const EdgeInsets.all(12.0),
//                 child: const SizedBox(
//                   // height: 75,
//                   width: double.infinity,
//                   child: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image(
//                             image: NetworkImage(
//                                 "https://img.icons8.com/fluency/48/programming.png")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Software",
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.w600),
//                               ),
//                               Text("Development, DSA and CP")
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(Radius.circular(12.0)),
//                   color: const Color.fromARGB(255, 163, 234, 254),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 106, 106, 106)
//                           .withOpacity(.5),
//                       blurRadius: 20.0, // soften the shadow
//                       spreadRadius: 0.0, //extend the shadow
//                       offset: const Offset(
//                         5.0, // Move to right 10  horizontally
//                         5.0, // Move to bottom 10 Vertically
//                       ),
//                     )
//                   ],
//                 ),
//                 margin: const EdgeInsets.all(12.0),
//                 child: const SizedBox(
//                   // height: 75,
//                   width: double.infinity,
//                   child: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image(
//                             image: NetworkImage(
//                                 "https://img.icons8.com/fluency/48/sell.png")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Product",
//                                 style: TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.w600),
//                               ),
//                               Text("Product life cycle and KPIs")
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),