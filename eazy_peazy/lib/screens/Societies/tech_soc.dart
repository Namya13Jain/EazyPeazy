import 'package:eazy_peazy/helper/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class TechSoc extends StatefulWidget {
  const TechSoc({super.key});

  @override
  State<TechSoc> createState() => _TechSocState();
}

class _TechSocState extends State<TechSoc> {
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
          "Technical Socities",
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
            //First Soc
            //GDSC
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
                        "GDSC IGDTUW",
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
                      image: AssetImage("assets/images/gdsc.png"),
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
                          final Uri url = Uri.parse(
                              'https://gdsc.community.dev/indira-gandhi-delhi-technical-university-for-women-delhi/');
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
            // Second Soc
            //LeanIn
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
                        "LeanIn IGDTUW",
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
                      image: AssetImage("assets/images/gdsc.png"),
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
                          final Uri url = Uri.parse(
                              'https://gdsc.community.dev/indira-gandhi-delhi-technical-university-for-women-delhi/');
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
            // Third Soc
            //Codebenders
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
                        "Codebenders",
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
                      image: AssetImage("assets/images/gdsc.png"),
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
                          final Uri url = Uri.parse(
                              'https://gdsc.community.dev/indira-gandhi-delhi-technical-university-for-women-delhi/');
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
            //4th soc
            //Minerva
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
                        "Minerva",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 73, 74),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Image(
                      image: AssetImage("assets/images/minerva.png"),
                      height: getProportionateScreenHeight(100),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    const Text(
                        "Minerva is the Tech Forum of IGDTUW, with an aim to be the one-stop destination for guidance and motivation for our students, from our remarkable seniors and alumni. While our work at Minerva can never be complete, our attempt to pass on words of wisdom from our seniors will be tireless."),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ElevatedButton(
                        style: style,
                        onPressed: () {
                          final Uri url = Uri.parse(
                              'https://minervaforum.in/Layouts/home.html#');
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
                                'https://www.linkedin.com/company/minerva-techforum/');
                            _launchUrl(url);
                          },
                          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                          color: const Color.fromARGB(255, 72, 73, 74),
                        ),
                        IconButton(
                          onPressed: () {
                            final Uri url = Uri.parse(
                                'https://www.instagram.com/minerva.igdtuw/');
                            _launchUrl(url);
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
              height: getProportionateScreenHeight(40),
            ),
          ],
        ),
      ),
    );
  }
}
