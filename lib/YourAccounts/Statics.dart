import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/widgets/customlisttile.dart';

class Statics extends StatefulWidget {
  const Statics({Key? key}) : super(key: key);

  @override
  _StaticsState createState() => _StaticsState();
}

class _StaticsState extends State<Statics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 410,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.teal.withOpacity(0.05), borderRadius: BorderRadius.circular(8)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Statistics',
              style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 14),
            ),
            CustomlistTile(
                image: 'assets/images/rupee.svg',
                titles: 'Total Revenues',
                subtitles: Text(
                  'Rs.' '${102500}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
                colour: Colors.teal),
            CustomlistTile(
                titles: 'Booking Revenues',
                image: 'assets/images/calendar.svg',
                subtitles: Text(
                  'Rs.' '${81500}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
                colour: Colors.teal),
            CustomlistTile(
                titles: 'Other Revenues',
                image: 'assets/images/water-bottle.svg',
                subtitles: Text(
                  'Rs.' '${29500}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
                colour: Colors.teal),
            Divider(),
            CustomlistTile(
                titles: 'Revenues from Regular Bookings',
                image: 'assets/images/refreshing.svg',
                subtitles: Text(
                  'Rs.' '${29500}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
                colour: Colors.teal),
            CustomlistTile(
                titles: 'Discounted Value to Players',
                image: 'assets/images/hot-sale.svg',
                subtitles: Text(
                  'Rs.' '${29500}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
                colour: Colors.teal)
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 185,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          color: Color(0xFFF8C701).withOpacity(0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sport Revenue Statistics',
                style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold'),
              ),
              CustomlistTile(
                image: 'assets/images/Futsal.svg',
                titles: 'Revenues from - Futsal',
                subtitles: Text(
                  'Rs. ' '${69500}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
              ),
              CustomlistTile(
                image: 'assets/images/Cricket.svg',
                titles: 'Revenues from - Cricket',
                subtitles: Text(
                  'Rs. ' '${33000}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Data Counseling',
          style: TextStyle(fontSize: 16, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
        ),
        Text(
          'Request a one-to-one session with our product managers and business development team at your venue and clear our all of your queries on the data made available to you via the WePlay app.',
          style: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal book'),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Access Help',
          style: TextStyle(fontSize: 16, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
        ),
        Text(
          'Visit out information center on the app to better understand the data made available for you before you reserve a counseling session.',
          style: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal book'),
        )
      ],
    );
  }
}
