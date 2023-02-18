import 'package:eazy_peazy/db/db_helper.dart';
import 'package:eazy_peazy/screens/Societies/entre_soc.dart';
import 'package:eazy_peazy/screens/Societies/tech_soc.dart';
import 'package:eazy_peazy/screens/add_reminder.dart';
import 'package:eazy_peazy/screens/contact_us.dart';
import 'package:eazy_peazy/screens/events.dart';
import 'package:eazy_peazy/screens/feedback.dart';
import 'package:eazy_peazy/screens/home_screen.dart';
import 'package:eazy_peazy/screens/profile.dart';
import 'package:eazy_peazy/screens/reminders.dart';
import 'package:eazy_peazy/screens/signin_screen.dart';
import 'package:eazy_peazy/screens/societies.dart';
import 'package:eazy_peazy/screens/splash_screen.dart';
import 'package:eazy_peazy/screens/vision.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await DBHelper.initDB();
  //await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(248, 72, 72, 0.8),
        highlightColor: const Color.fromRGBO(248, 72, 72, 0.8),
        fontFamily: 'Mont',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Eazy Peazy',
      initialRoute: 'splash_screen',
      routes: {
        'login': (context) => const SignInScreen(),
        'splash_screen': (context) => const SplashScreen(),
        'home_screen': (context) => const HomeScreen(),
        'vision': (context) => const Vision(),
        'profile': (context) => const Profile(),
        'societies': (context) => const Societies(),
        'reminders': (context) => const Reminders(),
        'events': (context) => const EventsPage(),
        'technical_soc': (context) => const TechSoc(),
        'ent_soc': (context) => const EntSoc(),
        'contact_us': (context) => const Contact(),
        'feedback': (context) => const FeedbackPage(),
        'add_reminder': (context) => const AddReminderPage(),
      },
    );
  }
}
