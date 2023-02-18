import 'package:eazy_peazy/screens/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          "EazyPeazy",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Berk', fontSize: 22),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'login');
              },
              child: const Icon(
                Icons.login_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'vision');
                },
                child: const Image(
                  image: AssetImage("assets/logo.png"),
                  height: 150,
                ),
              ),
              //home
              ListTile(
                  leading: const Icon(
                    Icons.home_filled,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'home_screen');
                  }),

              //societies
              ListTile(
                  leading: const Icon(
                    Icons.people_alt_rounded,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Societies',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'societies');
                  }),
              //events
              ListTile(
                  leading: const Icon(
                    Icons.event,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Events',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'events');
                  }),
              //Reminders
              ListTile(
                  leading: const Icon(
                    Icons.timer,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Reminders',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'reminders');
                  }),

              //profile
              /* ListTile(
                  leading: const Icon(
                    Icons.person_2_rounded,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'profile');
                  }), */
              //vision
              ListTile(
                  leading: const Icon(
                    Icons.design_services,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Vision',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'vision');
                  }),
              //contact us
              ListTile(
                  leading: const Icon(
                    Icons.contact_page,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Contact us',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'contact_us');
                  }),
              //feedback
              ListTile(
                  leading: const Icon(
                    Icons.feedback_rounded,
                    color: Color.fromRGBO(248, 72, 72, 0.8),
                    size: 30,
                  ),
                  title: const Text(
                    'Feedback',
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'feedback');
                  }),
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const Text(
              "Explore Opportunities",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 35, 34, 34),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            //First Opportunity
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(60)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              height: getProportionateScreenHeight(400),
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
                        "MLH Fellowship",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 73, 74),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(3),
                    ),
                    const Image(
                      image: AssetImage("assets/images/mlh.png"),
                      //height: getProportionateScreenHeight(200),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet malesuada elit. Maecenas at vulputate risus. Cras placerat,  Ut turpis neque, placerat nec eros ut, tempor cursus sem. Praesent nec lectus rhoncus, pulvinar  finibus tristique orci.\nDeadline: 12 March,2023"),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ElevatedButton(
                        style: style,
                        onPressed: () {
                          final Uri url = Uri.parse('https://mlh.io/');
                          _launchUrl(url);
                        },
                        child: const Text("Register")),
                  ],
                ),
              ),
            ),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            // Second Opportunity
            Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(60)),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                height: getProportionateScreenHeight(400),
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
                          "MLH Fellowship",
                          style: TextStyle(
                              color: Color.fromARGB(255, 72, 73, 74),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(3),
                      ),
                      const Image(
                        image: AssetImage("assets/images/mlh.png"),
                        //height: getProportionateScreenHeight(200),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet malesuada elit. Maecenas at vulputate risus. Cras placerat,  Ut turpis neque, placerat nec eros ut, tempor cursus sem. Praesent nec lectus rhoncus, pulvinar  finibus tristique orci.\nDeadline: 12 March,2023"),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      ElevatedButton(
                          style: style,
                          onPressed: () {
                            final Uri url = Uri.parse('https://mlh.io/');
                            _launchUrl(url);
                          },
                          child: const Text("Register")),
                    ],
                  ),
                )),
            //Spacing
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            // Third Opportunity
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(60)),
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              height: getProportionateScreenHeight(400),
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
                        "MLH Fellowship",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 73, 74),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(3),
                    ),
                    const Image(
                      image: AssetImage("assets/images/mlh.png"),
                      //height: getProportionateScreenHeight(200),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet malesuada elit. Maecenas at vulputate risus. Cras placerat,  Ut turpis neque, placerat nec eros ut, tempor cursus sem. Praesent nec lectus rhoncus, pulvinar  finibus tristique orci.\nDeadline: 12 March,2023"),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ElevatedButton(
                        style: style,
                        onPressed: () {
                          final Uri url = Uri.parse('https://mlh.io/');
                          _launchUrl(url);
                        },
                        child: Text("Register")),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
          ],
        ),
      ),
    );
  }
}
