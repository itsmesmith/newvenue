import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/YourAccounts/Txtbtn.dart';
import 'package:newvenue/screens/hostprofile.dart';
import 'package:newvenue/utils/CustomCirularimage.dart';
import 'package:newvenue/widgets/customlisttile.dart';

class UserandHosts extends StatefulWidget {
  const UserandHosts({Key? key}) : super(key: key);

  @override
  _UserandHostsState createState() => _UserandHostsState();
}

class _UserandHostsState extends State<UserandHosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Users & Hosts',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Manage your users, permission, host details and individual host access.',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFFFAB04).withOpacity(0.1),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCircularIamge(
                          Image: 'assets/images/ball.JPG',
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        CustomCircularIamge(
                          Image: 'assets/images/ball.JPG',
                        ),
                        CustomCircularIamge(
                          Image: 'assets/images/ball.JPG',
                        ),
                        CustomCircularIamge(
                          Image: 'assets/images/ball.JPG',
                        ),
                        CustomCircularIamge(
                          Image: 'assets/images/ball.JPG',
                        ),
                        CustomCircularIamge(
                          Image: 'assets/images/ball.JPG',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Over 75% of the venues have enabled management permissions for their users. Create users today to help your managers digitalize your venue while you stay completely in control.',
                      style: TextStyle(
                        fontFamily: 'Airbnb Cereal book',
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TxtBtn(
                      txt: 'Create a User',
                      Colour: Colors.teal,
                      txtcolour: Colors.white,
                      btnheight: 30,
                      borderwidth: 0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Existing Users',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              CustomlistTile(
                titlestyle: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal Bold'),
                titles: 'Abhisekh Duwal',
                image: 'assets/images/calendar.svg',
                titlebold: true,
                subtitles: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Manager - All Time',
                      style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: 'Airbnb Cereal book'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jul 5, 2021 - Present',
                      style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.75), fontFamily: 'Airbnb Cereal book'),
                    ),
                  ],
                ),
                trail: Container(
                  width: 50,
                  child: Row(
                    children: [
                      Text(
                        '3.5',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 10),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.teal,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HostProfile()));
                },
              ),
              Divider(),
              CustomlistTile(
                titlestyle: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal Bold'),
                titles: 'Abhisekh Duwal',
                image: 'assets/images/calendar.svg',
                titlebold: true,
                subtitles: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Manager - All Time',
                      style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: 'Airbnb Cereal book'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jul 5, 2021 - Present',
                      style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.75), fontFamily: 'Airbnb Cereal book'),
                    ),
                  ],
                ),
                trail: Container(
                  width: 50,
                  child: Row(
                    children: [
                      Text(
                        '3.5',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 10),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.teal,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Past Users',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              CustomlistTile(
                titlestyle: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal Bold'),
                titles: 'Abhisekh Duwal',
                image: 'assets/images/calendar.svg',
                titlebold: true,
                subtitles: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Manager - All Time',
                      style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: 'Airbnb Cereal book'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jul 5, 2021 - Present',
                      style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.75), fontFamily: 'Airbnb Cereal book'),
                    ),
                  ],
                ),
                trail: Container(
                  width: 50,
                  child: Row(
                    children: [
                      Text(
                        '3.5',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 10),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.teal,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
