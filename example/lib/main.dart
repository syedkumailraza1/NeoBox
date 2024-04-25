import 'package:flutter/material.dart';
import 'package:neobox/neobox.dart';

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
        home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: NeoBox(
        blurRadius: 30,
        width: 100,
        height: 100,
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(24),
        child: Center(
            child: Text(
          'data',
          style: TextStyle(color: Colors.white),
        )),
      )),
    );
  }
}
