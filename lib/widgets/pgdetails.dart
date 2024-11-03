import 'package:flutter/material.dart';
import 'package:repdun/widgets/headText.dart';

class Pgdetails extends StatelessWidget{

  final String pgname;
  final String pgloc;
  final String owneravail;

  Pgdetails({
    required this.pgname,
    required this.pgloc,
    required this.owneravail,

  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(

      children: [
        Headtext(text: pgname,fontSize: 12.0,),
        SizedBox(height: 10,),
        Row(
          children: [
            Icon(Icons.location_city_outlined),
            Text(pgloc)
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Icon(Icons.lock_clock),
            Text(owneravail)
          ],
        ),
        SizedBox(height: 10,),

      ],
    );
  }
}