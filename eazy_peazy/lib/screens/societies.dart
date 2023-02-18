import 'package:eazy_peazy/screens/size_configs.dart';
import 'package:flutter/material.dart';

class Societies extends StatefulWidget {
  const Societies({super.key});

  @override
  State<Societies> createState() => _SocietiesState();
}

class _SocietiesState extends State<Societies> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Societies",
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
            Row(
              children: [
                //1st row content
                //Technical Societies
                //Entrepreneurship Societies
                //...
                //Tech Soc Tab
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                              const AssetImage("assets/images/technical.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Technical Societies",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                //Entrepreneurship Soc
                GestureDetector(
                  onTap: () {
                    //update the route
                    Navigator.pushNamed(context, 'ent_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                          image: const AssetImage("assets/images/ent.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Entrepreneur-ship Societies",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //2nd row for sustainable and self help

            Row(
              children: [
                //Sustainable
                GestureDetector(
                  onTap: () {
                    //update route
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                          image: const AssetImage("assets/images/sustain.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Suatainability Societies",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                //Self help tab
                GestureDetector(
                  onTap: () {
                    //update the route
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                              const AssetImage("assets/images/self-help.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Self Help Societies",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //3rd row for sports and music and dance
            Row(
              children: [
                //Sports
                GestureDetector(
                  onTap: () {
                    //update route
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                          image: const AssetImage("assets/images/sports.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Sports \nSociety",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                //Cultural tab
                GestureDetector(
                  onTap: () {
                    //update the route
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                          image: const AssetImage("assets/images/music.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Cultural Societies",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //4th row for social cause and others
            Row(
              children: [
                //Social cause
                GestureDetector(
                  onTap: () {
                    //update route
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                          image: const AssetImage("assets/images/social.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Social Cause Societies",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                //Others tab
                GestureDetector(
                  onTap: () {
                    //update the route
                    Navigator.pushNamed(context, 'technical_soc');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(220),
                    width: getProportionateScreenWidth(170),
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
                          image: const AssetImage("assets/images/other.png"),
                          height: getProportionateScreenHeight(130),
                          width: getProportionateScreenWidth(100),
                        ),
                        const Text(
                          "Other \nSocieties",
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
