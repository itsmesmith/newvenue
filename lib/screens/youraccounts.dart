import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newvenue/YourAccounts/ReportViewPage.dart';

class YourAccounts extends StatefulWidget {
  const YourAccounts({Key? key}) : super(key: key);

  @override
  _YourAccountsState createState() => _YourAccountsState();
}

class _YourAccountsState extends State<YourAccounts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 190,
                  color: Color(0xFF42A591),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Your Accounts',
                          style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Keep track of your customers, manage your regular bookings, allocate prices and more.',
                          style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 10,
                    right: 10,
                    bottom: -20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.5,
                              blurRadius: 5,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Search for Invoices',
                              style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/images/calendar.svg',
                            height: 21,
                            width: 21,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'August,2021',
                            style: TextStyle(fontSize: 16, fontFamily: 'Airbnb Cereal Bold'),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF463F3A).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF463F3A).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ReportView()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
