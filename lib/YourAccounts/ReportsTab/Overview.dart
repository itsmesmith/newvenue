import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/YourAccounts/Txtbtn.dart';
import 'package:newvenue/YourAccounts/incomechart.dart';

import '../Statics.dart';

class Overview extends StatelessWidget {
  final List<Income> getincome = [
    Income(month: "June", market: 250, yourincome: 310),
    Income(month: "July", market: 250, yourincome: 250),
    Income(month: "Aug", market: 95, yourincome: 210),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          color: Colors.teal.withOpacity(0.05),
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Income chart',
                    style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Your Income',
                            style: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal book'),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Market',
                            style: TextStyle(fontSize: 12, fontFamily: 'Airbnb Cereal book'),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Expanded(child: Container(child: Incomechart(getincome: getincome))),
              SizedBox(
                height: 20,
              ),
              TxtBtn(
                txt: 'View Chart',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Statics(),
      ],
    );
  }
}
