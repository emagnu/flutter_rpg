//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'screens/home_screen.dart';
import 'themes/theme.dart';
//  //   ///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter RPG Tutorial Example',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),useMaterial3: true,),
      theme: primaryTheme,
      home: const HomeScreen(),
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: const Text('Sandbox'),
    );
  }
}

//  //   ///
//  Import LIBRARIES
//  Import FILES
//  //   ///


