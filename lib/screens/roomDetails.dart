import 'package:flutter/material.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';


class Roomdetails extends StatefulWidget {
  final String imageAsset;
  final String category;
  final double rating;
  final int rentalPrice;
  final List<String> services;

  Roomdetails({
    required this.imageAsset,
    required this.category,
    required this.rating,
    required this.rentalPrice,
    required this.services,
  });

  @override
  State<Roomdetails> createState() => _RoomdetailsState();
}

class _RoomdetailsState extends State<Roomdetails> {
  DateTime ? selectedDate;

  Future <void> _chooseD(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100)
      );
      if (picked !=null && picked !=selectedDate){
        setState((){
          selectedDate=picked;
        });
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Room Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(widget.imageAsset, height: 200, width: double.infinity, fit: BoxFit.cover),
              ),
              SizedBox(height: 16),
              Text(
                'Rental Price: ₹ ${widget.rentalPrice} / month',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Rating: ${widget.rating}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Facilities:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              
              Wrap(
                spacing: 8.0, // Horizontal space between items
                runSpacing: 8.0, // Vertical space between lines
                children: widget.services.map((service) => Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Text(service, style: TextStyle(fontSize: 16)),
                )).toList(),
              ),
              SizedBox(height: 25,),
              Headtext(text: "About Owner"),
              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                  border: Border.all(
                    color: Colors.grey
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Name:"),
                        Spacer(),
                        Text("Vishal Dubey")
                      ],
                    ),
                    SizedBox(height: 15,),

                    Row(
                      children: [
                        Text("Age:"),
                        Spacer(),
                        Text("40")
                      ],
                    ),
                  SizedBox(height: 15,),

                    Row(
                      children: [
                        Text("Occupation:"),
                        Spacer(),
                        Text("Property Dealer")
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                 padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                  border: Border.all(
                    color: Colors.grey
                  )
                ),

                child: Column(
                  children: [
                    Row(children: [
                      Text("Total Availability"),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          _chooseD(context);
                        },
                        child: Icon(
                          Icons.calendar_month_outlined),
                      ),
                      Text(
                        selectedDate!=null ? "${selectedDate}/${selectedDate!.month}/${selectedDate!.year}"
                        : "Date"
                      ),
                    ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
