import 'package:flutter/material.dart';

import 'package:repdun/widgets/_buildAppBar.dart';

class Appointments extends StatefulWidget {
  final DateTime selectedDate;
  final String selectedTime;
  final String imageAsset;

  const Appointments({
    Key? key,
    required this.selectedDate,
    required this.selectedTime,
    required this.imageAsset,
  }) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  String? selv = "request";

  @override
  Widget build(BuildContext context) {
    // Define screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Appointments"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selv = "request";
                        });
                      },
                      child: Text(
                        "Requests",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 14 : 16,
                          color: selv == "request" ? Colors.blue : Colors.black,
                          fontWeight: selv == "request" ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selv = "ongoing";
                        });
                      },
                      child: Text(
                        "Ongoing",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 14 : 16,
                          color: selv == "ongoing" ? Colors.blue : Colors.black,
                          fontWeight: selv == "ongoing" ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (selv == "request") ...[
                    AppointmentCard(
                      imageAsset: widget.imageAsset,
                      date: widget.selectedDate,
                      time: widget.selectedTime,
                      isSmallScreen: isSmallScreen,
                    ),
                  ],
                  if (selv == "ongoing") ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Ongoing Appointment Example"),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String imageAsset;
  final DateTime date;
  final String time;
  final bool isSmallScreen;

  const AppointmentCard({
    Key? key,
    required this.imageAsset,
    required this.date,
    required this.time,
    required this.isSmallScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageAsset,
                    width: isSmallScreen ? 80 : 120,
                    height: isSmallScreen ? 80 : 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
           
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today_outlined, 
                            color: Colors.amber,
                            size: isSmallScreen ? 16 : 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Appointment Requested',
                            style: TextStyle(
                              fontSize: isSmallScreen ? 14 : 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(Icons.calendar_month, size: isSmallScreen ? 14 : 16, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(
                            '${date.day}-${date.month}-${date.year}',
                            style: TextStyle(color: Colors.grey[600], fontSize: isSmallScreen ? 12 : 14),
                          ),
                          const SizedBox(width: 16),
                          Icon(Icons.access_time, size: isSmallScreen ? 14 : 16, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(
                            time,
                            style: TextStyle(color: Colors.grey[600], fontSize: isSmallScreen ? 12 : 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1),
          // Adjust Action Button icon sizes for small screens
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.bookmark_border, size: isSmallScreen ? 20 : 24),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share, size: isSmallScreen ? 20 : 24),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.phone, size: isSmallScreen ? 20 : 24),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete_outline, size: isSmallScreen ? 20 : 24),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
