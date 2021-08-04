import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newvenue/models/bookingmodel.dart';
import 'package:newvenue/screens/yourcustomers.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  _FiveState createState() => _FiveState();
}

class _FiveState extends State<Five> {
  // bool _isActive = false;
  // bool _isActivetime = false;
  //bool shouldChange = false;
  bool shouldchangetime = false;
  int selectedIndexground = -1;
  int selectedIndextime = -1;

  final grounds = ["Ground 1", "Ground 2"];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 410,
      //padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35.h,
            //width: double,
            child: ListView.builder(
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              //physics: NeverScrollableScrollPhysics(),
              itemCount: grounds.length,
              itemBuilder: (ctx, index) {
                print('index : $index');
                return GestureDetector(
                  onTap: () {
                    //shouldChange = !shouldChange;
                    if (selectedIndexground == index) {
                      selectedIndexground = -1;
                    } else {
                      selectedIndexground = index;
                    }
                    //print('should chane : $shouldChange');
                    setState(() {});
                  },
                  child: Container(
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: selectedIndexground == index ? Colors.teal : Colors.teal.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 8.0,
                    ),
                    margin: EdgeInsets.only(
                      right: index == 1 ? 0.0 : 20.0,
                    ),
                    child: Text(
                      grounds[index],
                      style: TextStyle(color: selectedIndexground == index ? Colors.white : Colors.black, fontSize: 14.sp, fontFamily: "Airbnb Cereal Medium"),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: timeslots.length,
            itemBuilder: (ctx1, index1) {
              final gettimeslots = timeslots[index1];
              return GestureDetector(
                onTap: () {
                  shouldchangetime = !shouldchangetime;
                  if (selectedIndextime == index1) {
                    selectedIndextime = -1;
                  } else {
                    selectedIndextime = index1;
                  }
                  print('should chane : $shouldchangetime');
                  setState(() {});
                },
                child: Container(
                  height: 40.h,
                  //width: 200,
                  decoration: BoxDecoration(
                    color: selectedIndextime == index1 ? Colors.teal : Colors.teal.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        gettimeslots.time!,
                        style: TextStyle(color: selectedIndextime == index1 ? Colors.white : Colors.black, fontSize: 14.sp, fontFamily: "Airbnb Cereal Medium"),
                      ),
                      Text(
                        'Rs.' + gettimeslots.price.toString(),
                        style: TextStyle(color: selectedIndextime == index1 ? Colors.white : Colors.black, fontSize: 14.sp, fontFamily: "Airbnb Cereal Medium"),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 15,
          ),
          Theme(
              data: ThemeData(canvasColor: Colors.transparent),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => YourCustomers()));
                  },
                  child: Text(
                    'Manage Your Bookings',
                    style: TextStyle(fontFamily: 'Airbnb Cereal black', fontSize: 14, color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      side: BorderSide(color: Colors.black, width: 1),
                      minimumSize: Size(double.infinity, 40))))
        ],
      ),
    );
  }
}
