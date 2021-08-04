import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PriceAllocation extends StatefulWidget {
  const PriceAllocation({Key? key}) : super(key: key);

  @override
  _PriceAllocationState createState() => _PriceAllocationState();
}

class _PriceAllocationState extends State<PriceAllocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
          padding: EdgeInsets.all(15),
          height: 310,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFF42A591).withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    'assets/images/hot-sale.svg',
                    height: 30,
                    width: 30,
                    color: Color(0xFF42A591),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Allocate prices',
                    style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Discounted Match Prices',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
              ),
              Text(
                'Fixed discounts, allocated to customers and controlled completely by you.',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Specified Match Prices',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
              ),
              Text(
                'Allocate a certain price for a slot to any customer. Your same old customers, now at their same old prices.',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
              ),
              SizedBox(
                height: 15,
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
    );
  }
}
