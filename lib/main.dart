import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plants/firebase_options.dart';
import 'package:plants/screens/home.dart';
import 'package:plants/screens/homePage.dart';
import 'package:plants/screens/login.dart';
import 'package:plants/screens/order.dart';
import 'package:plants/screens/splash.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
