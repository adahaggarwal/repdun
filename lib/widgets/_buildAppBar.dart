import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double ?fontSize;
  final Icon? firsticon;

  const CustomAppBar({Key? key,
   required this.title,
   this.fontSize = 18.0,
   this.firsticon 
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: firsticon,
      actions: [
        
        SizedBox(width: 1),
        IconWithBackground(icon: Icons.favorite_border_outlined),
        SizedBox(width: 1),
        IconWithBackground(icon: Icons.notifications_active_outlined),
      ],
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


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
        color: Colors.white, 
        child: Padding(
          padding: const EdgeInsets.all(8.0), 
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
