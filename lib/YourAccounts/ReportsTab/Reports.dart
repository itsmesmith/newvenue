import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newvenue/widgets/customlisttile.dart';

import '../Txtbtn.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          //height: 230.h,
          decoration: BoxDecoration(color: Colors.teal.withOpacity(0.05), borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Download Reports for',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              Text(
                'Kumari Futsal & Snooker Center',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16, color: Colors.teal),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From:',
                        style: TextStyle(color: Colors.black, fontFamily: 'Airbnb Cereal book', fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(width: 1),
                          color: Colors.teal.withOpacity(0.2),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To:',
                        style: TextStyle(color: Colors.black, fontFamily: 'Airbnb Cereal book', fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(width: 1),
                          color: Colors.teal.withOpacity(0.2),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TxtBtn(txt: 'View Report')
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Default Reports',
          style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Medium'),
        ),
        SizedBox(
          height: 15,
        ),
        CustomlistTile(
          titles: '30 Day Reports',
          image: 'assets/images/profit-report.svg',
          subtitles: Text(
            '5 June- 5 July',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
          ),
          baccolour: Color(0xFFF4F4F4),
        ),
        SizedBox(
          height: 15,
        ),
        CustomlistTile(
          titles: 'Monthly Reports',
          image: 'assets/images/profit-report.svg',
          subtitles: Text(
            'June',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
          ),
          baccolour: Color(0xFFF8C701).withOpacity(0.2),
        ),
        SizedBox(
          height: 15,
        ),
        CustomlistTile(
          titles: 'Quarterly Reports',
          image: 'assets/images/profit-report.svg',
          subtitles: Text(
            'July',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
          ),
          baccolour: Colors.teal.withOpacity(0.2),
        )
      ],
    );
  }
}
