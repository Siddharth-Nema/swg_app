import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';

class BenifitsOfInstiId extends StatelessWidget {
  const BenifitsOfInstiId({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Benefits of Insti ID',
        style: TextStyle(color: Colors.black),
      )),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: GlobalStyles.kPrimaryBlueColor,
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
              "Benefits of Insti-ID",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Dive to know the benefits of having an institute email and make the best use of them.",
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
                      color: index % 2 == 0 ? Colors.transparent : Colors.black,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFF43DDFF),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: NetworkImage(
                              "https://cdn.icon-icons.com/icons2/2407/PNG/512/grammarly_icon_146168.png"),
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Grammarly Premium",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFF43DDFF),
                  ),
                  child: const Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/R.98865e06d77faca32b3e118df119049e?rik=AU0%2bE0ROLAbnog&riu=http%3a%2f%2flogonoid.com%2fimages%2fintellij-idea-logo.png&ehk=CapqYnZAeX0cbsUWxFNWr913YwdQDC7OFt%2ftIAEb%2fBU%3d&risl=&pid=ImgRaw&r=0"),
                            height: 60,
                            width: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Intellij Idea",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*

Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    width: size.width * 0.4,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://cdn.icon-icons.com/icons2/2407/PNG/512/grammarly_icon_146168.png"),
                            height: 60,
                            width: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Grammarly Premium")
                        ],
                      ),
                    ),
                  ),



Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    width: 180,
                    child: const Flexible(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/R.98865e06d77faca32b3e118df119049e?rik=AU0%2bE0ROLAbnog&riu=http%3a%2f%2flogonoid.com%2fimages%2fintellij-idea-logo.png&ehk=CapqYnZAeX0cbsUWxFNWr913YwdQDC7OFt%2ftIAEb%2fBU%3d&risl=&pid=ImgRaw&r=0"),
                              height: 60,
                              width: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Intellij Idea")
                          ],
                        ),
                      ),
                    ),
                  )

 */
