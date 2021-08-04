import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/widgets/Yourcustomers/regularbookings.dart';

class BookingsBarDiagram extends StatelessWidget {
  final List<Bookings> getbookingslist = [Bookings(month: 'July', regularbookings: 50, normalbookings: 100), Bookings(month: 'August', regularbookings: 100, normalbookings: 200)];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Regular Bookings',
            style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              padding: EdgeInsets.all(15),
              height: 400,
              decoration: BoxDecoration(color: Color(0xFFF8C701).withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 26,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '225',
                          style: TextStyle(color: Color(0xFF42A591), fontSize: 20, fontFamily: 'Airbnb Cereal ExtraBold'),
                        ),
                        Text(
                          ' Regular Bookings for August, 2021',
                          style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 26,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '%',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Airbnb Cereal ExtraBold'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          ' 45% to total venue revenues',
                          style: TextStyle(
                            fontFamily: 'Airbnb Cereal book',
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 26,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '%',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Airbnb Cereal ExtraBold'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          ' Expected growth at 20% p.a.',
                          style: TextStyle(
                            fontFamily: 'Airbnb Cereal book',
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //height: 200,
                      child: RegularBookings(
                        getbookingslist: getbookingslist,
                      ),
                    ),
                  ),
                  Theme(
                      data: ThemeData(canvasColor: Colors.transparent),
                      child: TextButton(
                          onPressed: null,
                          child: Text(
                            'View Allocated Prices',
                            style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 14, color: Colors.black),
                          ),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              side: BorderSide(color: Colors.black, width: 1),
                              minimumSize: Size(double.infinity, 40))))
                ],
              )),
        ],
      ),
    );
  }
}
