import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Icon(Icons.menu, color: Colors.black),
      actions: [
        IconWithBackground(icon: Icons.group_add_outlined),
        SizedBox(width: 1),
        IconWithBackground(icon: Icons.favorite_border_outlined),
        SizedBox(width: 1),
        IconWithBackground(icon: Icons.notifications_active_outlined),
      ],
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// Reusable IconWithBackground Widget
class IconWithBackground extends StatelessWidget {
  final IconData icon;

  const IconWithBackground({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
