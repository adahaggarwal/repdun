import 'package:flutter/material.dart';

class Aboutowner extends StatelessWidget{

  final String oname;
  final String oage;
  final String occ;

  Aboutowner({
    Key? key,
    required this.oname,
    required this.oage,
    required this.occ,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Name:"),
                        Spacer(),
                        Text(oname)
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("Age:"),
                        Spacer(),
                        Text(oage)
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("Occupation:"),
                        Spacer(),
                        Text(occ)
                      ],
                    ),
                  ],
                ),
              );
  }
}