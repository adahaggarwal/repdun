import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';

class Subbtn extends StatelessWidget{
  final String title;

  Subbtn({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    
    // TODO: implement build
    return ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenw/3, vertical: 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: darkGray,
                  ),
                );
  }
}