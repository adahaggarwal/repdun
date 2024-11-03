import 'package:flutter/material.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/screens/home.dart';
import 'package:repdun/widgets/_buildAppBar.dart'; // Import the new custom widgets

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'DM Sans',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Repairs Duniya'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: Home(), 
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
    );
  }
}

