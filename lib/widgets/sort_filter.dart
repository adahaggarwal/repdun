import 'package:flutter/material.dart';

class SortAndFilterWidget extends StatelessWidget {
  final VoidCallback onSortPressed;
  final VoidCallback onFilterPressed;

  const SortAndFilterWidget({
    Key? key,
    required this.onSortPressed,
    required this.onFilterPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: sortbtn(
              text: "Sort By",
              borderRadius: 0,
              onPressed: onSortPressed,
              leadingIcon: const Icon(Icons.sort, color: Colors.black),
            ),
          ),
          Expanded(
            child: sortbtn(
              text: "Filter",
              borderRadius: 0,
              onPressed: onFilterPressed,
              leadingIcon: Image.asset('assets/images/Group.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class sortbtn extends StatelessWidget {
  final String text;
  final double borderRadius;
  final VoidCallback onPressed;
  final Widget leadingIcon;

  const sortbtn({
    Key? key,
    required this.text,
    required this.borderRadius,
    required this.onPressed,
    required this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        side: const BorderSide(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leadingIcon,
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}