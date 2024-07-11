import 'package:flutter/material.dart';
import 'package:responsive_login_ui/views/chat_view.dart';
import 'package:responsive_login_ui/views/home_view.dart';
// import 'package:responsive_login_ui/views/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: const HomeScreen(),
    );
  }
}
