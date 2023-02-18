import 'package:eazy_peazy/helper/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Contact Us",
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
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(1),
              ),
              child: const Text(
                "EazyPeazy is there to help each and every student of IGDTUW not to miss out any opportunity, and also getting updated about each and every event conducted in the University. We want to expand our horizon by building a community of IGDTUWites. You can connect with your peers and seniors on these social media platforms.\n\nHappy connecting:)",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            //Discord Server
            GestureDetector(
              onTap: () {
                final Uri url = Uri.parse('https://discord.gg/BM75eBgp');
                _launchUrl(url);
              },
              child: Container(
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(300),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        //add link to discord
                        final Uri url =
                            Uri.parse('https://discord.gg/BM75eBgp');
                        _launchUrl(url);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.discord,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "Discord",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            //Telegram group
            GestureDetector(
              onTap: () {
                //update link later
                final Uri url = Uri.parse('https://discord.gg/BM75eBgp');
                _launchUrl(url);
              },
              child: Container(
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(300),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        //add link to telegram
                        //update link later
                        final Uri url =
                            Uri.parse('https://discord.gg/BM75eBgp');
                        _launchUrl(url);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.telegram,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "Telegram",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            //Slack
            GestureDetector(
              onTap: () {
                //update link later
                final Uri url = Uri.parse('https://discord.gg/BM75eBgp');
                _launchUrl(url);
              },
              child: Container(
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(300),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        //add link to telegram
                        //update link later
                        final Uri url =
                            Uri.parse('https://discord.gg/BM75eBgp');
                        _launchUrl(url);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.slack,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "Slack",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
