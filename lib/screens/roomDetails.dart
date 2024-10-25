import 'package:flutter/material.dart';

class Roomdetails extends StatelessWidget {
  final String imageAsset;
  final String category;
  final double rating;
  final int rentalPrice;
  final List<String> services;

  Roomdetails({
    required this.imageAsset,
    required this.category,
    required this.rating,
    required this.rentalPrice,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(imageAsset, height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Text(
              'Rental Price: ₹ $rentalPrice / month',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Rating: $rating',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Facilities:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(services.join(" | "), style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
