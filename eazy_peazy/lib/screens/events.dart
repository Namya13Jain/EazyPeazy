import 'package:eazy_peazy/helper/size_configs.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Events",
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
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              //Heading
              const Text(
                "University events",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                height: getProportionateScreenHeight(250),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "Rapid Hacks",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: GDSC IGDTUW",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //2nd event
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "HackOverflow 2.0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: AI club",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //3rd event
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "LeanIn Hacks 4.0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: LeanIn IGDTUW",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //2nd category
              const Text(
                "Hackathons",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                height: getProportionateScreenHeight(250),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "Work-a-th0n",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: MLH",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //2nd event
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "DU Hacks 2.0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: DDU",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //3rd event
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "Flow Hackathon",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: Devfolio",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //3rd category
              const Text(
                "Technical Workshops",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                height: getProportionateScreenHeight(250),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "Flutter Forward",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: Flutter Delhi",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //2nd event
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "HackOverflow 2.0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: AI club",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //3rd event
                    GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, 'technical_soc');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(15)),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        width: getProportionateScreenWidth(200),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(3),
                            ),
                            Image(
                              image:
                                  const AssetImage("assets/images/coming.png"),
                              height: getProportionateScreenHeight(130),
                              width: getProportionateScreenWidth(100),
                            ),
                            const Text(
                              "LeanIn Hacks 4.0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "Conducted by: AI club",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 18, 18),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
