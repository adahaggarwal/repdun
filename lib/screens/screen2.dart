import 'package:flutter/material.dart';
import 'package:repdun/constants/color.dart';
import 'package:repdun/screens/commercialDuniya.dart';
import 'package:repdun/screens/hotels.dart';
import 'package:repdun/screens/house_flat.dart';
import 'package:repdun/screens/screen3.dart';
import 'package:repdun/widgets/CustomBottomNavBar.dart';
import 'package:repdun/widgets/_buildAppBar.dart';

class Stays extends StatefulWidget {
  Stays({Key? key}) : super(key: key);

  @override
  _StaysState createState() => _StaysState();
}

class _StaysState extends State<Stays> {
  

  void _onItemTapped(int index) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Stays Duniya"),
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
                      Column(
                        children: [
                          Text("Flat 20% Off on first \n availed service ",
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
                              child: Text("See All Offers", style: TextStyle(
                                color: Colors.black
                              ),)),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/images/tag.png'))
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Feel free to search rent based on preferences")),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 140,
                          width: 160,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: yy,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Pgduniya()));
                            },
                            child: Image.asset('assets/images/pg.png')),
                        ),
                        SizedBox(height: 25,),
                        Text("PG"),
                        SizedBox(height: 25,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Commercialduniya()));
                          },
                          child: Container(
                            height: 140,
                            width: 160,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: lred,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image.asset('assets/images/comm.png'),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text("Commercial"),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseFlat()));
                          },
                          child: Container(
                            height: 140,
                            width: 160,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: bb,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image.asset('assets/images/hrent.png'),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text("House/Flat Rent"),
                        SizedBox(height: 25,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Hotels()));
                          },
                          child: Container(
                            height: 140,
                            width: 160,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: yy,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image.asset('assets/images/hotel.png'),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text("Hotel"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Join Us",
                    style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w800),),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Let’s become partner of Stays duniya!")),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.white,
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
                      Column(
                        children: [
                          Text("List Your Property ",
                            style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 19),),
                          Text("Integrate your property with \n Stays duniya."),
                          SizedBox(height: 15,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: OutlinedButton(onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 35),
                                side: BorderSide(color: Colors.black, width: 1.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ), 
                              child: Text("Join Us Now", style: TextStyle(
                                color: Colors.black
                              ),)),
                          )
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/handshake.png'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: 0,
  
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
}
