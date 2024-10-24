import 'package:flutter/material.dart';
//import 'package:repdun/constants/color.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';
import 'package:repdun/widgets/outlinedbtn.dart'; 
import 'package:repdun/widgets/roomCard.dart';
import 'package:repdun/widgets/sort_filter.dart'; 

class Pgresults extends StatefulWidget {
  final double budget;
  Pgresults({Key? key, required this.budget}) : super(key: key);

  @override
  _PgduniyaState createState() => _PgduniyaState();
}

class _PgduniyaState extends State<Pgresults> {
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(text:"PG", onPressed: (){}),
                      CustomOutlinedButton(text:"House Rent/Flat", onPressed: (){}),
                      CustomOutlinedButton(text:"Hotel", onPressed: (){}),
                  
                      
                    ],
                  ),
                ),
                SizedBox(height: 20),
                
                Headtext(text: "Book Now (Single Room)"),
                SizedBox(height: 20),
                Row(children: [
                  Text("Budget Range: ₹ 1000-${widget.budget} "),
                  Spacer(),
                  Text("Results (10)",
                  style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.grey

                  ),)

                ],),

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
                ),
                SortAndFilterWidget(onSortPressed: (){}, onFilterPressed: (){})

                
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


  

}
