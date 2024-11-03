import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart'; 

class Repairsdun extends StatefulWidget {
  Repairsdun({Key? key}) : super(key: key);

  @override
  _StaysState createState() => _StaysState();
}

class _StaysState extends State<Repairsdun> {
  int _selectedIndex = 0; 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Repairs Duniya"),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 238, 234, 234),
                      Colors.white
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        child: Image.asset('assets/images/horn.png')),
                      Column(
                        children: [
                          Text("10% discount on \n first booking ",
                            style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 19),),
                          SizedBox(height: 15,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: OutlinedButton(onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 45),
                                side: BorderSide(color: Colors.black, width: 1.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ),
                              child: Text("View All Offers", style: TextStyle(
                                color: Colors.black
                              ),)),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Book Now",
                    style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Need help with Repair?")),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: yy,
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
                      child: Image.asset('assets/images/ac.png'),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: bb,
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
                      child: Image.asset('assets/images/ref.png'),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: lred,
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
                      child: Image.asset('assets/images/wm.png'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Air Conditioner"),
                    Text("Refrigerator"),
                    Text("Washing Machine"),
                  ],
                ),
                SizedBox(height: 35),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: lred,
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
                      child: Image.asset('assets/images/tfan.png'),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: yy,
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
                      child: Image.asset('assets/images/cfan.png'),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                        color: bb,
                        borderRadius: BorderRadius.circular(30),
                        
                      ),
                      child: Image.asset('assets/images/gyser.png'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Table Fan"),
                    Text("Ceiling Fan"),
                    Text("Geyser"),
                  ],
                ),
                SizedBox(height: 25),

                SizedBox(height: 35),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended Experts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildExpertCard('assets/images/electrician.png', bb),
                    buildExpertCard('assets/images/plumber.png', lred),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Electrician"),
                    Text("Plumber"),
                  ],
                ),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Additional Recommendation",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 197,
                  width: 355,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: yy,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Buy Appliances",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          Text("More offers are waiting\ninside and free\ndelivery also available."),
                          SizedBox(height: 10),
                          ElevatedButton(
                            
                            onPressed: () {},
                            child: Text("Shop Now",
                            style: TextStyle(
                              color: Colors.white, // Set the text color to white
                              fontWeight: FontWeight.bold, // Make the text bold
                            ),),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                                backgroundColor:darkGray
            
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset('assets/images/buy.png')),
                    ],
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,

        ),
      ),
    );
  }

  Widget _buildIconWithBackground(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(3.0), // Adds margin around the circular background
      child: Material(
        shape: CircleBorder(),
        elevation: 3,
        color: Colors.white, // Background color
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Adjusts the size of the circle
          child: Icon(
            icon,
            color: Colors.black, // Icon color
          ),
        ),
      ),
    );
  }

  Widget buildExpertCard(String imagePath, Color backgroundColor) {
    return Container(
      height: 100,
      width: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}
