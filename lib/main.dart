import 'package:flutter/material.dart';
import 'package:login_page/screens/splashscreen.dart';
import 'package:login_page/screens/login.dart';
import 'package:login_page/screens/storage.dart';

void main() {
  runApp(const Pages());
}

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'login',
      initialRoute: '/',
      routes: {
        '/' :(context) => SplashScreen(),
        '/login' :(context) => LogIn(),
        '/storage' : (context) => Storage(),
      },

    );
  }
}
