import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newvenue/widgets/HomeScreen/5vs5.dart';

class AvailableTimeSlots extends StatefulWidget {
  const AvailableTimeSlots({Key? key}) : super(key: key);

  @override
  _AvailableTimeSlotsState createState() => _AvailableTimeSlotsState();
}

class _AvailableTimeSlotsState extends State<AvailableTimeSlots> {
  final matches = ["5 vs 5", "7 vs 7"];
  bool shouldChangematch = false;
  int selectedIndexmatch = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available Timeslots',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35.h,
                //width: double,
                child: ListView.builder(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  //physics: NeverScrollableScrollPhysics(),
                  itemCount: matches.length,
                  itemBuilder: (ctx, index) {
                    print('index : $index');
                    return GestureDetector(
                      onTap: () {
                        shouldChangematch = !shouldChangematch;
                        if (selectedIndexmatch == index) {
                          selectedIndexmatch = -1;
                        } else {
                          selectedIndexmatch = index;
                        }
                        print('should chane : $shouldChangematch');
                        setState(() {});
                      },
                      child: Container(
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: selectedIndexmatch == index ? Colors.teal : Colors.teal.withOpacity(0.2),
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
                          matches[index],
                          style: TextStyle(color: selectedIndexmatch == index ? Colors.white : Colors.black, fontSize: 14.sp, fontFamily: "Airbnb Cereal Medium"),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Five(),
            ],
          ),
        ),
      ],
    );
  }
}
