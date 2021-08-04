import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newvenue/screens/HostInfo.dart';

class HomeTop extends StatefulWidget {
  const HomeTop({Key? key}) : super(key: key);

  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/lalitpur 7A side.JPG'),
          height: 325,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        image: DecorationImage(
                          image: AssetImage('assets/images/DSC_0311.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HostInfo()));
                    },
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/logovert.png',
                    ),
                    color: Colors.white,
                    width: 120,
                    height: 20,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Theme(
                  data: ThemeData(canvasColor: Colors.transparent),
                  child: Chip(
                      backgroundColor: Color(0x80F44336),
                      avatar: CircleAvatar(
                        backgroundColor: Color(0x80F44336),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                      ),
                      label: Text(
                        'NOTICE',
                        style: TextStyle(fontFamily: 'Airbnb Cereal Medium', color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.right,
                      )),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sukedhara, Kathmandu',
                    style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lalitpur 5A Side Futsal',
                    style: TextStyle(color: Colors.white, fontFamily: 'Airbnb Cereal Bold', fontSize: 20),
                  ),
                  SvgPicture.asset(
                    'assets/images/qr-code-scan (1).svg',
                    color: Colors.white,
                    height: 38,
                    width: 38,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(15),
                height: 220,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 14),
                        ),
                        Text(
                          'View Calender',
                          style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFF42A591).withOpacity(0.1)),
                          child: Row(
                            children: [
                              Text(
                                '16',
                                style: TextStyle(color: Colors.green, fontFamily: 'Airbnb Cereal Bold'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Bookings',
                                style: TextStyle(fontFamily: 'Airbnb Cereal Medium'),
                              ),
                              Text(
                                '  |  ',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: 'Airbnb Cereal Bold',
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                '4',
                                style: TextStyle(color: Colors.green, fontFamily: 'Airbnb Cereal Bold'),
                              ),
                              Text(
                                ' Completed',
                                style: TextStyle(fontFamily: 'Airbnb Cereal Medium'),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/calendar.svg',
                          color: Colors.green,
                          height: 40,
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Sports',
                      style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 14),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SvgPicture.asset(
                            'assets/images/Futsal.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                        Expanded(
                          child: SvgPicture.asset(
                            'assets/images/Cricket.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                        Expanded(
                          child: SvgPicture.asset(
                            'assets/images/Cricket.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                        Expanded(
                          child: SvgPicture.asset(
                            'assets/images/Cricket.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                        Spacer()
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
