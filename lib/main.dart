import 'package:flutter/material.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart'; 
import 'package:repdun/screens/home.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white, 

        ),
      ),
      home: const MyHomePage(title: 'Repairs Duniya'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getSelectedScreen() {
    switch (_selectedIndex) {
      case 0:
        return Home(); // Home Screen
      case 1:
        return Center(child: Text('Category')); 
      case 2:
        return Center(child: Text('My Stays')); 
      case 3:
        return Center(child: Text('Appointments'));
      case 4:
        return Center(child: Text('Profile'));
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          _buildIconWithBackground(Icons.group_add_outlined),
          SizedBox(width: 1),
          _buildIconWithBackground(Icons.favorite_border_outlined),
          SizedBox(width: 1),
          _buildIconWithBackground(Icons.notifications_active_outlined),
        ],
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _getSelectedScreen(), 
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  // Function to create circular icon buttons with elevation
  Widget _buildIconWithBackground(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(3.0), 
      child: Material(
        shape: CircleBorder(),
        elevation: 3,
        color: Colors.white, // Background color
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Adjusts the size of the circle
          child: Icon(
            icon,
            color: Colors.black, 
          ),
        ),
      ),
    );
  }
}
