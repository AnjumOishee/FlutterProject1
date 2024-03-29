import 'package:flutter/material.dart';
import 'package:java_test/page1.dart';
import 'package:java_test/page2.dart';
import 'package:java_test/page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _Controller= PageController(initialPage: 0,);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: PageView(
              scrollDirection: Axis.vertical,
              controller: _Controller,
              children: <Widget>[
                FirstPage(),
                SecondPage(),
                ThirdPage(),
              ],
            ),
          ),
        )
    );
  }
}

