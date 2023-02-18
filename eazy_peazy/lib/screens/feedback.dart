import 'package:eazy_peazy/helper/buttons.dart';
import 'package:eazy_peazy/helper/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Feedback",
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
      body: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const Image(image: AssetImage("assets/images/feed.png")),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
              "EazyPeazy has been developed keeping in mind the needs of the students of IGDTUW. But there is always a scope for improving. To make EazyPeazy more helpful for all, kindly head on to the feedback form and share your valuable feedback.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          MyButton(
              label: "Feedback",
              onTap: () {
                final Uri url = Uri.parse(
                    'https://docs.google.com/forms/d/e/1FAIpQLSfm1UP1c6orJuE2a_Yzta5H0BWxJBW34OO98BKHh8bvH10vcA/viewform');
                _launchUrl(url);
              })
        ],
      ),
    );
  }
}
