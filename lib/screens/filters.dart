import 'package:flutter/material.dart';
import 'package:repdun/screens/pgresults.dart';
import 'package:repdun/widgets/headText.dart';

class Filters extends StatefulWidget {
  Filters({Key? key}) : super(key: key);

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  int? selectedTileIndex;
  double _selectedBudget = 5000;
  String _selectedView = 'category';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Main content
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey[100]!, width: 1),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Headtext(text: "Filters"),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text("CANCEL"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.grey[100],
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _selectedView = 'category';
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.black,
                                      elevation: 0,
                                    ),
                                    child: Text("Category"),
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _selectedView = 'budget';
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.black,
                                      elevation: 0,
                                    ),
                                    child: Text("Budget"),
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _selectedView = 'discount';
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.black,
                                      elevation: 0,
                                    ),
                                    child: Text("Discount"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (_selectedView == 'category') ...[
                                    _buildListTile("Single Room", 0),
                                    SizedBox(height: 10),
                                    _buildListTile("Double Bed", 1),
                                    SizedBox(height: 10),
                                    _buildListTile("Triple Bed", 2),
                                    SizedBox(height: 10),
                                    _buildListTile("Multiple Sharing", 3),
                                    SizedBox(height: 30),
                                  ],
                                  if (_selectedView == 'budget') ...[
                                    Text("Budget", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Slider(
                                      value: _selectedBudget,
                                      min: 1000,
                                      max: 10000,
                                      divisions: 20,
                                      label: _selectedBudget.round().toString(),
                                      onChanged: (double value) {
                                        setState(() {
                                          _selectedBudget = value;
                                        });
                                      },
                                    ),
                                    Text("Selected Budget: ₹${_selectedBudget.toStringAsFixed(2)}"),
                                  ],
                                  if (_selectedView == 'discount') ...[
                                    Text("Discount", style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                )
              ),
             
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=>Pgresults(budget:_selectedBudget)));
                    },
                    child: Text(
                      'APPLY',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text("CANCEL")
                    ),
                ],
              ),
            ),
          ],
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    );
  }
}
