import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';
import 'package:repdun/screens/discover.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/outlinedbtn.dart'; 

class Pgduniya extends StatefulWidget {
  Pgduniya({Key? key}) : super(key: key);

  @override
  _PgduniyaState createState() => _PgduniyaState();
}

class _PgduniyaState extends State<Pgduniya> {
  int _selectedIndex = 0; 
  int? selectedTileIndex;
  int? _selectedButtonIndex; 
  int ? profind;

  void _onButtonPressed(int index) { //gender 
    setState(() {
      _selectedButtonIndex = index; 
    });
  }
  void profselected(int index){
    setState(() {
      profind=index; // profession
      
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _isProceedEnabled() {
    return _selectedButtonIndex != null && profind != null;
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
                    CustomOutlinedButton(
                      text: "Male",
                      onPressed: () => _onButtonPressed(0),
                      borderRadius: 20,
                      isSelected: _selectedButtonIndex == 0,
                    ),
                    CustomOutlinedButton(
                      text: "Female",
                      onPressed: () => _onButtonPressed(1),
                      borderRadius: 20,
                      isSelected: _selectedButtonIndex == 1,
                    ),
                    CustomOutlinedButton(
                      text: "Colive",
                      onPressed: () => _onButtonPressed(2),
                      borderRadius: 20,
                      isSelected: _selectedButtonIndex == 2,
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
                      suffixIcon: Container(child: Icon(Icons.arrow_drop_down)),
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
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select your Profession",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: -15.0, // Horizontal space between buttons
                  runSpacing: 5.0, // Vertical space between lines
                  children: [
                    CustomOutlinedButton(
                      text: "Student",
                      onPressed: () => profselected(3),
                      borderRadius: 20,
                      isSelected: profind == 3,
                    ),
                    CustomOutlinedButton(
                      text: "Working",
                      onPressed: () => profselected(4),
                      borderRadius: 20,
                      isSelected: profind == 4,
                    ),
                    CustomOutlinedButton(
                      text: "Non-Working",
                      onPressed: () => profselected(5),
                      borderRadius: 20,
                      isSelected: profind == 5,
                    ),
                    CustomOutlinedButton(
                      text: "Delivery Boy",
                      onPressed: () => profselected(6),
                      borderRadius: 20,
                      isSelected: profind == 6,
                    ),
                    CustomOutlinedButton(
                      text: "Entrepreneur",
                      onPressed: () => profselected(7),
                      borderRadius: 20,
                      isSelected: profind == 7,
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
                  onPressed: _isProceedEnabled() ? () {
                    try {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Discover()));
                    } catch (e) {
                      print('Navigation error: $e'); // Handle the error appropriately
                    }
                  } : null, // Disable button if conditions are not met
                  child: Text(
                    "Proceed",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: darkGray,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: 1,
      
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
