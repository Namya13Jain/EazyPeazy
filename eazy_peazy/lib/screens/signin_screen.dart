import 'package:eazy_peazy/screens/signup_screen.dart';
import 'package:eazy_peazy/screens/size_configs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widgets.dart';
import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(250, 255, 255, 255),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 10, 0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(30)),
                  child: const Text(
                    "EazyPeazy",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontFamily: 'Berk',
                    ),
                  ),
                ),
                logoWidget("assets/images/logo_small.png"),
                const Text(
                  "Manage Everything like a pro!!",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Mont',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                reusableTextField("Enter Password", Icons.lock_outline, false,
                    _passwordTextController),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                SignInSignUpButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                sigUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row sigUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Color.fromARGB(255, 72, 73, 74),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
                color: Color.fromARGB(255, 72, 73, 74),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
