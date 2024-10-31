import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final FontWeight fontWeight;
  final Widget? leadingIcon; 
  final Color backgroundColor;
  final bool isSelected; // New parameter for selected state

  const CustomOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.leadingIcon, 
    this.borderColor = Colors.grey,
    this.textColor = Colors.black,
    this.borderRadius = 5.0,
    this.elevation = 10.0,
    this.backgroundColor = Colors.white,
    this.fontWeight = FontWeight.w700,
    this.isSelected = false, // Default is unselected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor),
          backgroundColor: isSelected ? darkGray : backgroundColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leadingIcon != null) ...[
              leadingIcon!,
              SizedBox(width: 8),
            ],
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : textColor,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
