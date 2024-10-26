import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';
import 'package:repdun/screens/discover.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart'; 

class Pgduniya extends StatefulWidget {
  Pgduniya({Key? key}) : super(key: key);

  @override
  _PgduniyaState createState() => _PgduniyaState();
}

class _PgduniyaState extends State<Pgduniya> {
  int _selectedIndex = 0; // For the Bottom Navigation Bar
  int? selectedTileIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "PG Duniya"),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Male", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Female", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Others", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Container(
                        child: Icon(Icons.arrow_drop_down)),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
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
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
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
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select your Profession",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Student", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Working", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Non-Working", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Delivery Boy", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                    SizedBox(width: 8),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Entrepreneur", style: TextStyle(color: Colors.black)),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Book Now",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select your mode for booking Paying guest.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                _buildListTile("Single Room", 0),
                SizedBox(height: 10),
                _buildListTile("Double Bed", 1),
                SizedBox(height: 10),
                _buildListTile("Triple Bed", 2),
                SizedBox(height: 10),
                _buildListTile("Multiple Sharing", 3),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    try {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Discover()));
                    } catch (e) {
                      print('Navigation error: $e'); // Handle the error appropriately
                    }
                  },
                  child: Text(
                    "Proceed",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: darkGray,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }

  Widget _buildListTile(String title, int index) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      trailing: selectedTileIndex == index ? Icon(Icons.check, color: Colors.green) : null,
      onTap: () {
        setState(() {
          selectedTileIndex = index;
        });
      },
      tileColor: const Color.fromARGB(255, 239, 235, 235),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

 
}
