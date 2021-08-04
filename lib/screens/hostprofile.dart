import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newvenue/widgets/customlisttile.dart';
import 'package:sized_context/sized_context.dart';

class HostProfile extends StatefulWidget {
  const HostProfile({Key? key}) : super(key: key);

  @override
  _HostProfileState createState() => _HostProfileState();
}

class _HostProfileState extends State<HostProfile> {
  final Permissions = [
    'Bookings & Cancellations',
    'Change Prices',
    'Discounts & Offers',
    'Invoices & Other Revenue',
    'Revenues & Financial Reports',
  ];
  int selectedIndex = -1;
  bool isswitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 210,
                  decoration: BoxDecoration(color: Colors.teal),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // margin: EdgeInsets.all(15),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 25,
                          ))
                    ],
                  ),
                ),
                Positioned(
                  bottom: -35,
                  // left: 150,
                  child: Container(
                    width: context.widthPx,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                            image: DecorationImage(image: AssetImage('assets/images/DSC_0311.JPG'), fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Abhisekh Duwal',
                    style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Manager',
                    style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 120,
                    width: context.widthPx,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Activity Details',
                          style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Last online on 9:59 PM on July 3, 2021',
                          style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Host Rating:',
                              style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                            ),
                            Row(
                              children: [
                                Text(
                                  '3.5/5',
                                  style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              '245 reviews on November',
                              style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 10, decoration: TextDecoration.underline),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    height: 330,
                    decoration: BoxDecoration(color: Color(0xFFFFAB04).withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Login & Business Hours',
                              style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 12),
                            ),
                            Text(
                              'View',
                              style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 12, decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomlistTile(
                          titles: 'Phone Number',
                          image: 'assets/images/Futsal.svg',
                          subtitles: Text(
                            '9806269459',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal Bold',
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        CustomlistTile(
                          titles: 'Password',
                          image: 'assets/images/Futsal.svg',
                          subtitles: Text(
                            '********',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal Bold',
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        CustomlistTile(
                          titles: 'Working Hours',
                          image: 'assets/images/Futsal.svg',
                          subtitles: Text(
                            '7:00 AM - 9:00 PM',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal Bold',
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        CustomlistTile(
                          titles: 'Shift Details',
                          image: 'assets/images/Futsal.svg',
                          subtitles: Text(
                            'All Time',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal Bold',
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Roles & Permission',
                    style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200.h,
                    child: ListView.builder(
                        itemCount: Permissions.length,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              if (selectedIndex == index) {
                                isswitched = true;
                              } else {
                                isswitched = false;
                              }
                              setState(() {
                                //selectedIndex = index;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Permissions[index],
                                          style: TextStyle(
                                            fontFamily: 'Airbnb Cereal book',
                                            fontSize: 12,
                                          )),
                                      Container(
                                        height: 35,
                                        child: Switch(
                                          value: isswitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isswitched = value;
                                              print(isswitched);
                                            });
                                          },
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider()
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Host Details',
                    style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomlistTile(
                    titlebold: true,
                    leadingbaccolor: Colors.teal,
                    colour: Colors.white,
                    titles: 'Baluwatar, Kathmandu',
                    image: 'assets/images/location-pin.svg',
                    subtitles: Text('Venue Address'),
                  ),
                  CustomlistTile(
                    titlebold: true,
                    leadingbaccolor: Colors.teal,
                    colour: Colors.white,
                    titles: 'hardikfutsal@gmail.com',
                    image: 'assets/images/location-pin.svg',
                    subtitles: Text('Email Address'),
                  ),
                  CustomlistTile(
                    titlebold: true,
                    leadingbaccolor: Colors.teal,
                    colour: Colors.white,
                    titles: '9806269459',
                    image: 'assets/images/call (1).svg',
                    subtitles: Text('Phone Number'),
                  ),
                  CustomlistTile(
                    titlebold: true,
                    leadingbaccolor: Colors.teal,
                    colour: Colors.white,
                    titles: '24/09/2020',
                    image: 'assets/images/location-pin.svg',
                    subtitles: Text('Birthdate'),
                  ),
                  CustomlistTile(
                    titlebold: true,
                    leadingbaccolor: Colors.teal,
                    colour: Colors.white,
                    titles: 'Male',
                    image: 'assets/images/location-pin.svg',
                    subtitles: Text('Gender'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
