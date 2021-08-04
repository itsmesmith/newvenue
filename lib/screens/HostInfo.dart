import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/YourAccounts/Txtbtn.dart';
import 'package:newvenue/widgets/customlisttile.dart';

import 'User&Hosts.dart';

class HostInfo extends StatefulWidget {
  const HostInfo({Key? key}) : super(key: key);

  @override
  _HostInfoState createState() => _HostInfoState();
}

class _HostInfoState extends State<HostInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(
                        height: 25,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(image: AssetImage('assets/images/ball.JPG'), fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                              width: 220,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Hosted by: ',
                                    style: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal book'),
                                  ),
                                  Text(
                                    'Rajan Maharjan',
                                    style: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal Bold'),
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
                      Text(
                        'Kumari Futsal & Snooker Center',
                        style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.black.withOpacity(0.73),
                          ),
                          Text(
                            'Paknajol, Thamel',
                            style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.black.withOpacity(0.73),
                          ),
                          Text(
                            '+977-9866879187',
                            style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mail_outline_outlined,
                            color: Colors.black.withOpacity(0.73),
                          ),
                          Text(
                            'kumarifutsal@gmail.com',
                            style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TxtBtn(txt: 'Manage Venue Profile'),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manage Users',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Users & Hosts',
                        image: 'assets/images/user.svg',
                        subtitles: Text('Manage your users, permission, host details and individual host access.'),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => UserandHosts()));
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Manage Activities',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Activities & Pitches',
                        image: 'assets/images/soccer-ball-variant.svg',
                        subtitles: Text('Manage your activities, pitches, merge grounds and set prices.'),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Operations, Prices & Offers',
                        image: 'assets/images/rupee.svg',
                        subtitles: Text('Manage your operating days, ground prices and immediate discounts.'),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Contact WePlay',
                        image: 'assets/images/call (1).svg',
                        subtitles: Text('Get in touch with our team for support on any bookings, events, activities and more.'),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Notifications',
                        image: 'assets/images/notification.svg',
                        subtitles: Text('Manage notification and communication settings for you and your hosts.'),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Help & Tutorials',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Access Help',
                        image: 'assets/images/information.svg',
                        subtitles: Text('View tutorials on how to use the app and access our partner care team.'),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Legal',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'Our Agreement Policies',
                        image: 'assets/images/insurance.svg',
                        subtitles: Text("Get to know our policies and what's in it for venue hosts and managers."),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomlistTile(
                        colour: Colors.red,
                        leadingconborderradii: 25,
                        leadingbaccolor: Color(0xFFF3F3F3),
                        titlebold: true,
                        titles: 'LogOut',
                        image: 'assets/images/logout.svg',
                        subtitles: Text(''),
                        trail: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
