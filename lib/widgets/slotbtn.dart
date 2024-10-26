import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';

class Slotbtn extends StatelessWidget{
  final String slott;

  const Slotbtn({
    Key? key,
    required this.slott,
  }): super(key:key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Text(slott, style: TextStyle(
        color: slotcol
      ),),
      
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: slotcol)
          
          
        )
        
      )
    );
  }
}


