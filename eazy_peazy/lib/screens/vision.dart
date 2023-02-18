import 'package:eazy_peazy/screens/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class Vision extends StatelessWidget {
  const Vision({super.key});

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
          "Our Vision",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Mont', fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, 'home_screen');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: const AssetImage("assets/images/logo_small.png"),
              height: getProportionateScreenHeight(200),
              width: getProportionateScreenWidth(200),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: const Text(
                "There are a number of societies in our college and we often tend to miss a lot of opportunities and events which matches our interests. But we don't get to know and remember all of them.We often say 'Oh, which society is this?', 'Which event are you talking about?', 'Oh no! I missed the deadline of this event'.\n\nNo need to worry, 'EazyPeazy' is there to help you know about each and every society at IGDTUW and also the various events conducted by these societies. At last,  you also get to know about the various hackathons and internship opportunities!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const Text(
              "Meet the founder",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Container(
              height: getProportionateScreenHeight(300),
              width: getProportionateScreenWidth(250),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                  vertical: getProportionateScreenHeight(10)),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.shade400, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Image(
                    image: const AssetImage(
                      "assets/images/girl.jpeg",
                    ),
                    height: getProportionateScreenHeight(150),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  const Text(
                    "Namya Jain",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      final Uri url = Uri.parse(
                          'https://www.linkedin.com/in/namya-jain-bb9454215');
                      _launchUrl(url);
                    },
                    child: Text("Connect"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            )
          ],
        ),
      ),
    );
  }
}
