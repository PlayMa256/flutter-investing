import 'package:flutter/material.dart';
import 'package:investing/pages/MyHomePage.dart';
import 'package:investing/pages/Wallet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      initialRoute: "/",
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/wallet': (context) => Wallet(),
      },
    );
  }
}
