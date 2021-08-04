import 'package:flutter/material.dart';
import 'package:newvenue/widgets/HomeScreen/availabletimeslots.dart';
import 'package:newvenue/widgets/HomeScreen/hometop.dart';
import 'package:newvenue/widgets/HomeScreen/hostinformation.dart';
import 'package:newvenue/widgets/HomeScreen/matchinvites.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTop(),
                AvailableTimeSlots(),
                SizedBox(
                  height: 30,
                ),
                HostInfo(),
                SizedBox(
                  height: 10,
                ),
                MatchInvites()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
