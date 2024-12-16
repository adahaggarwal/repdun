import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';
import 'package:repdun/widgets/subbtn.dart';
// import 'package:repdun/widgets/outlinedbtn.dart';
// import 'package:repdun/widgets/subbtn.dart';

class Hotels extends StatefulWidget {
  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  int peopleCount = 2; 
  DateTime? selectedDate1;
  DateTime? selectedDate2;

  final dateFormat = DateFormat("MMMM d, yyyy");

  // Function to pick a date
  Future<void> _selectDate(BuildContext context, bool isFirstDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        if (isFirstDate) {
          selectedDate1 = pickedDate;
        } else {
          selectedDate2 = pickedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Hotels Duniya"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Headtext(text: "Hot Deals"),
                SizedBox(height: 15),
                Image.asset('assets/images/hotdeal.png'),
                SizedBox(height: 20),
                Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Landmark and Area",
                      prefixIcon: Icon(Icons.pin_drop_outlined),
                      suffixIcon: Icon(Icons.send),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.gps_fixed),
                    SizedBox(width: 5),
                    Text("Use my current location"),
                  ],
                ),
                SizedBox(height: 20),

                // Person Count Row
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove, color: Colors.grey.shade700),
                        onPressed: () {
                          setState(() {
                            if (peopleCount > 1) peopleCount--;
                          });
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.grey.shade700),
                          SizedBox(width: 5),
                          Text(
                            "$peopleCount people",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.grey.shade700),
                        onPressed: () {
                          setState(() {
                            peopleCount++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Date Pickers
                _buildDatePicker("Choose date", selectedDate1, true),
                SizedBox(height: 20),
                _buildDatePicker("Choose date", selectedDate2, false),

                SizedBox(height: 30,),
                Subbtn(title: "Search")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDatePicker(String hintText, DateTime? selectedDate, bool isFirstDate) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () => _selectDate(context, isFirstDate),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Conditional Image for Date Picker Icons
                Image.asset(
                  isFirstDate
                      ? 'assets/images/date1.png' // First image
                      : 'assets/images/date2.png', // Second image
                  width: 24, // Set the width for the image
                  height: 24, // Set the height for the image
                  color: Colors.grey.shade700, // Optional tint for the image
                ),
                SizedBox(width: 10),
                Text(
                  selectedDate != null
                      ? dateFormat.format(selectedDate)
                      : hintText,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
            Icon(Icons.circle, color: Colors.grey.shade300, size: 12),
          ],
        ),
      ),
    );
  }

}
