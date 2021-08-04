import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/models/bookingmodel.dart';
import 'package:newvenue/widgets/customlisttile.dart';
import 'package:table_calendar/table_calendar.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            daysOfWeekStyle: DaysOfWeekStyle(
                decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
            )),
            rowHeight: 45,
            daysOfWeekHeight: 20,
            focusedDay: DateTime.now(),
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: CalendarFormat.month,
            headerVisible: false,
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              todayDecoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Divider(),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Colors.teal.withOpacity(0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Earnings Report for', style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12)),
                SizedBox(
                  height: 8,
                ),
                Text('5 July, 2021', style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16, color: Colors.teal)),
                CustomlistTile(
                  titles: 'Revenue Generated Through Weplay',
                  image: 'assets/images/rupee.svg',
                  subtitles: Text(
                    'Rs.' '${8950}',
                    style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                  ),
                  colour: Colors.teal,
                ),
                CustomlistTile(
                    titles: 'Revenue Generated Offline',
                    image: 'assets/images/calendar.svg',
                    subtitles: Text(
                      'Rs.' '${2400}',
                      style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                    ),
                    colour: Colors.teal),
                CustomlistTile(
                    titles: 'Revenue Generated Through Weplay',
                    image: 'assets/images/rupee.svg',
                    subtitles: Text(
                      'Rs.' '${29500}',
                      style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                    ),
                    colour: Colors.teal),
                Divider(
                    //color: Colors.black,
                    ),
                CustomlistTile(
                    titles: 'Combined Others Revenues',
                    image: 'assets/images/water-bottle.svg',
                    subtitles: Text(
                      'Rs.' '${1750}',
                      style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                    ),
                    colour: Colors.teal),
                CustomlistTile(
                    titles: 'Discounted Value To Players',
                    image: 'assets/images/hot-sale.svg',
                    subtitles: Text(
                      'Rs.' '${14500}',
                      style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                    ),
                    colour: Colors.teal),
                CustomlistTile(
                    titles: 'Weplay Service Chargess',
                    image: 'assets/images/discount.svg',
                    subtitles: Text(
                      'Rs.' '${765}',
                      style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                    ),
                    colour: Colors.teal),
                Divider(
                    //color: Colors.black,
                    ),
                CustomlistTile(
                    titles: 'Net Earnings',
                    image: 'assets/images/rupee.svg',
                    subtitles: Text(
                      'Rs.' + '${10585}',
                      style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
                    ),
                    colour: Colors.teal),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Timeslot Breakdown',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Medium'),
          ),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: timeslots.length,
            itemBuilder: (ctx1, index1) {
              final gettimeslots = timeslots[index1];
              return Container(
                // height: 35,
                //width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
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
                      style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Airbnb Cereal Medium"),
                    ),
                    Text(
                      'Rs.' + gettimeslots.price.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Airbnb Cereal Medium"),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Unsold Slots',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Medium'),
          ),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: timeslots.length,
            itemBuilder: (ctx1, index1) {
              final gettimeslots = timeslots[index1];
              return Container(
                // height: 35,
                //width: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
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
                      style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Airbnb Cereal Medium"),
                    ),
                    Text(
                      'Rs.' + gettimeslots.price.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Airbnb Cereal Medium"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
