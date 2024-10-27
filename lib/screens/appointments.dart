import 'package:flutter/material.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';

class Appointments extends StatefulWidget {


  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  String? selv = "request";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Appointments"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selv = "request";
                        });
                      },
                      child: Text("Requests"),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selv = "ongoing";
                        });
                      },
                      child: Text("Ongoing")),
                  ],
                ),
                
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      if (selv=="request")...[
                        Card(
                          child: Row(

                          ),
                        )
                      ]

                    ],
                  ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}
