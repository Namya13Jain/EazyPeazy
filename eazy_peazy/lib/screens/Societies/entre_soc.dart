import 'package:eazy_peazy/helper/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class EntSoc extends StatefulWidget {
  const EntSoc({super.key});

  @override
  State<EntSoc> createState() => _EntSocState();
}

class _EntSocState extends State<EntSoc> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.8,
        textStyle: const TextStyle(
            fontSize: 18, fontFamily: 'Mont', fontWeight: FontWeight.w600));
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Entrepreneurship Socities",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Mont', fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, 'societies');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            // Second Soc
            //Anveshan
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(60)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              height: getProportionateScreenHeight(350),
              width: getProportionateScreenWidth(300),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                    style: BorderStyle.solid, color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(10)),
                      child: const Text(
                        "Anveshan Foundation",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 73, 74),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    const Image(
                      image: AssetImage("assets/images/anveshan.png"),
                      //height: getProportionateScreenHeight(200),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet malesuada elit. Maecenas at vulputate risus. Cras placerat,  Ut turpis neque, placerat nec eros ut, tempor cursus sem. Praesent nec lectus rhoncus, pulvinar  finibus tristique orci."),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ElevatedButton(
                        style: style,
                        onPressed: () {
                          final Uri url =
                              Uri.parse('https://www.anveshanfoundation.org/');
                          _launchUrl(url);
                        },
                        child: const Text("Visit")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            //update the discord server link
                          },
                          icon: const FaIcon(FontAwesomeIcons.discord),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            //update the twitter link
                          },
                          icon: const FaIcon(FontAwesomeIcons.twitter),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            final Uri url = Uri.parse(
                                'https://www.linkedin.com/company/lean-in-igdtuw/');
                            _launchUrl(url);
                          },
                          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            //update the instagram
                          },
                          icon: const FaIcon(FontAwesomeIcons.instagram),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),

            //First Soc
            //E-Cell
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(60)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              height: getProportionateScreenHeight(350),
              width: getProportionateScreenWidth(300),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                    style: BorderStyle.solid, color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(10)),
                      child: const Text(
                        "E-Cell IGDTUW",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 73, 74),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    const Image(
                      image: AssetImage("assets/images/coming.png"),
                      //height: getProportionateScreenHeight(200),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet malesuada elit. Maecenas at vulputate risus. Cras placerat,  Ut turpis neque, placerat nec eros ut, tempor cursus sem. Praesent nec lectus rhoncus, pulvinar  finibus tristique orci."),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ElevatedButton(
                        style: style,
                        onPressed: () {
                          final Uri url =
                              Uri.parse('https://www.anveshanfoundation.org/');
                          _launchUrl(url);
                        },
                        child: const Text("Visit")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            //update the discord server link
                          },
                          icon: const FaIcon(FontAwesomeIcons.discord),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            //update the twitter
                          },
                          icon: const FaIcon(FontAwesomeIcons.twitter),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            final Uri url = Uri.parse(
                                'https://www.linkedin.com/company/dscigdtuw/mycompany/');
                            _launchUrl(url);
                          },
                          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            //update the instagram
                          },
                          icon: const FaIcon(FontAwesomeIcons.instagram),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
          ],
        ),
      ),
    );
  }
}
