import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';
import 'package:repdun/screens/pgresults.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';
import 'package:repdun/widgets/outlinedbtn.dart'; 
import 'package:repdun/widgets/roomCard.dart'; 

class Discover extends StatefulWidget {
  Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  
  int? selectedTileIndex;
  double _currentSliderValue = 5000; 
  void _onItemTapped(int index) {
    setState(() {
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Discover"),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(text: "PG", onPressed: () {}),
                      CustomOutlinedButton(text: "House Rent/Flat", onPressed: () {}),
                      CustomOutlinedButton(text: "Hotel", onPressed: () {}),
                    ],
                  ),
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
                      suffixIcon: Icon(Icons.arrow_drop_down),
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
                Image.asset('assets/images/loc.png'),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.gps_fixed, color: pblue),
                    SizedBox(width: 5),
                    Text("Use my current location", style: TextStyle(color: pblue)),
                  ],
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomOutlinedButton(text: "Single Room", onPressed: () {}),
                      CustomOutlinedButton(text: "Double Sharing", onPressed: () {}),
                      CustomOutlinedButton(text: "Triple Sharing", onPressed: () {}),
                      CustomOutlinedButton(text: "Multiple Sharing", onPressed: () {}),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Headtext(text: "Book Now"),
                    Spacer(),
                    Icon(Icons.filter_alt_outlined),
                    GestureDetector(
                      onTap: () {
                        showFilterDialog(context);
                      },
                      child: Text("Filter Budget"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search Results (56)"),
                    GestureDetector(
                      onTap: () {
                        // Pass the current budget value to Pgresults
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pgresults(budget: _currentSliderValue)),
                        );
                      },
                      child: Text(
                        "View More",
                        style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      RoomCard(
                        imageAsset: 'assets/images/rc1.png',
                        category: 'Single Bedroom',
                        rating: 5,
                        rentalPrice: 6000,
                        services: ['AC', 'Wi Fi', 'Kitchen access', '24*7 Security', 'Parking available'],
                      ),
                      RoomCard(
                        imageAsset: 'assets/images/rc2.png',
                        category: 'Single Bedroom',
                        rating: 5,
                        rentalPrice: 9000,
                        services: ['AC', 'Wi Fi', 'Kitchen access', '24*7 Security', 'Parking available'],
                      ),
                      RoomCard(
                        imageAsset: 'assets/images/rc1.png',
                        category: 'Single Bedroom',
                        rating: 5,
                        rentalPrice: 7500,
                        services: ['AC', 'Wi Fi', 'Kitchen access', '24*7 Security', 'Parking available'],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: 1
      
        ),
      ),
    );
  }

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double _sliderValue = _currentSliderValue; 

        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Headtext(text: "Set Budget", alignment: Alignment.center),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/coins.png'),
                  SizedBox(height: 20),
                  Text(
                    "Select budget: \₹ ${_sliderValue.toStringAsFixed(0)}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 10000,
                    divisions: 20,
                    label: _sliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); 
                  },
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _currentSliderValue = _sliderValue; // Update the main budget variable
                    });
                    Navigator.of(context).pop(); // Close the dialog
                    print("Selected budget: $_currentSliderValue");
                  },
                  child: Text("Apply"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
