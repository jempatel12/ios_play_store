
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/play_store/play_home.dart';


import 'global.dart';
import 'ios_store/ios_home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return (Globals.platForm)
        ? MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Homepage(),
    )
        : const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: CupertinoHomePage(),
      ),
    );
  }
}