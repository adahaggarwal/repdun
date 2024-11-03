import 'package:flutter/material.dart';
import 'package:repdun/screens/appointments.dart';

import 'package:repdun/screens/home.dart';
import 'package:repdun/screens/pgduniya.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  void _navigateToPage(BuildContext context, int index) {
    Widget destination;

    switch (index) {
      case 0:
        destination = Home();
        break;
      case 1:
        destination = Pgduniya();
        break;
      case 2:
        destination = Appointments();
      case 3:
        destination = Appointments();
   
      default:
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) => _navigateToPage(context, index),
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/btmNavIcons/homeicon.png')),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/btmNavIcons/category.png')),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/btmNavIcons/mystays.png')),
          label: 'My Stays',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/btmNavIcons/appoint.png')),
          label: 'Appointment',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile',
        ),
      ],
      selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: const Color.fromARGB(255, 130, 129, 129),
      showUnselectedLabels: true,
    );
  }
}
