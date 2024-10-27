import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';

class Slotbtn extends StatefulWidget {
  final String slott;
  final String onSelect;
  final Function(String?) onSlotSelected;

  const Slotbtn({
    Key? key,
    required this.slott,
    required this.onSelect,
    required this.onSlotSelected,
  }) : super(key: key);

  @override
  State<Slotbtn> createState() => _SlotbtnState();
}

class _SlotbtnState extends State<Slotbtn> {
  bool isSelected = false;

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
    // Call the callback with the current slot if selected, otherwise pass null
    widget.onSlotSelected(isSelected ? widget.slott : null);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggleSelection,
      child: Text(
        widget.slott,
        style: TextStyle(
          color: isSelected ? Colors.white : slotcol,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? slotcol : Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: slotcol),
        ),
      ),
    );
  }
}
