import 'package:flutter/material.dart';
import 'package:instagram_clone/layouts/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


        theme: ThemeData(
        primarySwatch: Colors.blue,
          brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      themeMode: ThemeMode.dark,


      home: HomeLayout()
    );
  }
}
