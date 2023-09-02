import 'package:flutter/material.dart';
import 'package:nearstuds/login.dart';
import 'package:nearstuds/register.dart';
import 'package:nearstuds/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Splash(),
        '/login': (context) => const Login(),
        '/register': (context) => const Inscription(),
      },
    );
  }
}
