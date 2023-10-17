import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myntra/home.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const
  SystemUiOverlayStyle(
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icon color
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myntra',
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3:true,
      ),
      home: const MyHomePage(title: 'Myntra'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    Timer(const
    Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const home(title: 'myntra'))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          height: 175,
          width: 175,
          decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo.png'),fit: BoxFit.fitWidth,scale: 1)
          ),
        ),
      ),
    );
  }
}