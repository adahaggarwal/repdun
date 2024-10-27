import 'package:flutter/material.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';

class Appointments extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Appointments"),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 5,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: "Search stays by customer ID or owner name",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12)
                  )
                ),
              ),
              SizedBox(height: 30,),
              Headtext(text: "Scheduled appointment status"),
              Text("Ongoing appointments: ( Total -1 )", style: TextStyle(
                color: Colors.grey
              ),)
            ],

          ),
        ),
      ) ,
      
    );
  }
}