import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';
import 'package:repdun/screens/screen9.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/aboutOwner.dart';
import 'package:repdun/widgets/headText.dart';
import 'package:repdun/widgets/outlinedbtn.dart';
import 'package:repdun/widgets/pgdetails.dart';
import 'package:repdun/widgets/slotbtn.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  DateTime? selectedDate;
  String? selSlot;

  Future<void> _chooseD(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "Please Choose a slot and date",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void _selectSlot(String? slot) {
    setState(() {
      selSlot = slot;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Room Details"),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex:1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  widget.imageAsset,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Rental Price: ₹ ${widget.rentalPrice} / month',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Pgdetails(pgname: "SRI SAI",
               pgloc: "Patliputra", 
               owneravail: "Owner Available- 10:00 AM-23:55 PM" ),
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
                spacing: 8.0,
                runSpacing: 8.0,
                children: widget.services.map((service) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Text(service, style: TextStyle(fontSize: 16)),
                  );
                }).toList(),
              ),
              SizedBox(height: 25),
              Headtext(text: "About Owner"),
              SizedBox(height: 15),
              Aboutowner(oname: "Vishal Dubey", oage: "40", occ: "Property Dealer"),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Headtext(text: "Total Availability", fontSize: 15),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            _chooseD(context);
                          },
                          child: Icon(Icons.calendar_month_outlined),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            selectedDate != null
                                ? "${selectedDate}/${selectedDate!.month}/${selectedDate!.year}"
                                : "Date",
                            style: TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Check And Book Availability",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        Slotbtn(
                          slott: "4:30 PM",
                          onSelect: "4:30 PM",
                          onSlotSelected: _selectSlot,
                        ),
                        Slotbtn(
                          slott: "5:00 PM",
                          onSelect: "5:00 PM",
                          onSlotSelected: _selectSlot,
                        ),
                        Slotbtn(
                          slott: "5:30 PM",
                          onSelect: "5:30 PM",
                          onSlotSelected: _selectSlot,
                        ),
                        Slotbtn(
                          slott: "6:00 PM",
                          onSelect: "6:00 PM",
                          onSlotSelected: _selectSlot,
                        ),
                        Slotbtn(
                          slott: "6:30 PM",
                          onSelect: "6:30 PM",
                          onSlotSelected: _selectSlot,
                        ),
                        Slotbtn(
                          slott: "7:00 PM",
                          onSelect: "7:00 PM",
                          onSlotSelected: _selectSlot,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: 400,
                height: 50,
                child: CustomOutlinedButton(
                  text: "Book Appointment",
                  backgroundColor: selSlot == null ? Colors.grey[400]! : darkGray,
                  borderColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    if (selSlot == null) {
                      showToast();
                    } else {
                      _showDialog(context);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/tick.png'),
              SizedBox(height: 29),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Customer ID: 12345670000"),
              SizedBox(height: 20),
              Container(
                width: 200,
                child: CustomOutlinedButton(
                  text: "View",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Appointments(
                          selectedDate: selectedDate!,
                          selectedTime: selSlot!,
                          imageAsset: widget.imageAsset,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                "+Explore More",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
        );
      },
    );
  }
}