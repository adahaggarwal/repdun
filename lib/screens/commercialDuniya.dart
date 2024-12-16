import 'package:flutter/material.dart';
import 'package:repdun/widgets/_buildAppBar.dart';
import 'package:repdun/widgets/headText.dart';
import 'package:repdun/widgets/outlinedbtn.dart';
import 'package:repdun/widgets/subbtn.dart';

class Commercialduniya extends StatefulWidget {

  @override
  State<Commercialduniya> createState() => _CommercialduniyaState();
}

class _CommercialduniyaState extends State<Commercialduniya> {

  int? selectedTileIndex;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Commercial Duniya"),
      body: SafeArea(
        
        child: SingleChildScrollView(
          
          child: Container(
            
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Headtext(text: "Looking for: "),
                    CustomOutlinedButton(text: "Rent", onPressed: (){}, borderRadius: 20,), 
                    CustomOutlinedButton(text: "Buy", onPressed: (){}, borderRadius: 20,), 
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
                
                SizedBox(height: 20,),
                Headtext(text: "Book Now"),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Select your property type.", style: TextStyle(
                    fontSize: 15, color: Colors.grey
                  ),)),
                SizedBox(height: 20,),
                _buildListTile("Office Space", 0),
                SizedBox(height: 10,),
                _buildListTile("Co-Working", 1),
                SizedBox(height: 10,),
                _buildListTile("Shop", 2),
                SizedBox(height: 10,),
                _buildListTile("Showroom", 3),
                SizedBox(height: 10,),
                _buildListTile("Warehouse", 4),
                SizedBox(height: 10,),
                _buildListTile("Cafe", 5),
                SizedBox(height: 50,),

                Subbtn(title: "Proceed")


            
              ],
            ),
          ),
        )
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