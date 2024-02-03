import 'package:flutter/material.dart';
import 'package:yordamchiapp/pages/IntroPage.dart';
import 'package:yordamchiapp/pages/KirishPage.dart';
import 'package:yordamchiapp/pages/RoyxatdanOtish.dart';
import 'package:yordamchiapp/pages/elonlarpage.dart';
import 'package:yordamchiapp/pages/homepage.dart';
import 'package:yordamchiapp/pages/registar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ElonlarPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        IntroPage.id: (context) => IntroPage(),
        RegistarPage.id: (context) => RegistarPage(),
        KirishPage.id: (context) => KirishPage(),
        RoyxatdanOtish.id: (context) => RoyxatdanOtish(),
        ElonlarPage.id: (context) => ElonlarPage()
      },
    );
  }
}
