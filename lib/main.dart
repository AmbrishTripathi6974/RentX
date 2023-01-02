import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_2/auth/main_page.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/intro_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      
    );
  }
}

