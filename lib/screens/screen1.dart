import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:repdun/constants/color.dart';
import 'package:repdun/screens/screen3.dart';
import 'package:repdun/screens/repairsdun.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart';




import 'screen2.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),

        appBar: CustomAppBar(title: "Repairs Duniya"),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 140,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: bg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Refer and Earn",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: tea,
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Welcome to Karav Group",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset('assets/images/rocket.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Repairs Duniya", 
                    style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.w800)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Repairsdun()));
                      },

                      child: Text(
                        "View More",
                        style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 110,
                      child: Card(
                        color: yy,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/ac.png'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      child: Card(
                        color: bb,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/ref.png'),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      child: Card(
                        color: lred,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/wm.png'),
                      ),
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
                SizedBox(height: 25,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Stays Duniya",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text("Preference based accommodation for separate audiences. "),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                     
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Stays()), 
                      );
                    },
                    
                    child: Text(
                      "View More",
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: bb,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset('assets/images/hrent.png'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Pgduniya()));

                        },
                        child: Container(
                          height: 90,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: yy,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.asset('assets/images/pg.png'),
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: lred,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset('assets/images/comm.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("House Rent"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pgduniya()));
                    },
                    child: Text("Paying Guest")),
                  Text("Commercial"),
                ],),
                SizedBox(height: 30,),
              ],
            ),
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
