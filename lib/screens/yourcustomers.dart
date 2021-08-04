import 'package:flutter/material.dart';
import 'package:newvenue/widgets/Yourcustomers/bookingsbardiagram.dart';
import 'package:newvenue/widgets/Yourcustomers/online_offline_customers_page_view.dart';
import 'package:newvenue/widgets/Yourcustomers/priceallocation.dart';
import 'package:newvenue/widgets/Yourcustomers/searchbar.dart';

class YourCustomers extends StatefulWidget {
  @override
  _YourCustomersState createState() => _YourCustomersState();
}

class _YourCustomersState extends State<YourCustomers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(25, 25, 20, 25),
                child: Column(
                  children: [
                    OnlineOfflineCustomersPageView(),
                    Theme(
                        data: ThemeData(canvasColor: Colors.transparent),
                        child: TextButton(
                            onPressed: null,
                            child: Text(
                              'View All Customers',
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
            BookingsBarDiagram(),
            SizedBox(
              height: 30,
            ),
            PriceAllocation()
          ],
        ),
      )),
    );
  }
}
