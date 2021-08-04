import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/YourAccounts/Txtbtn.dart';
import 'package:newvenue/YourAccounts/creatinginvoices.dart';
import 'package:newvenue/widgets/customlisttile.dart';

class Invoices extends StatefulWidget {
  const Invoices({Key? key}) : super(key: key);

  @override
  _InvoicesState createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          height: 185,
          decoration: BoxDecoration(
            color: Colors.teal.withOpacity(0.05),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an Invoice',
                style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Medium'),
              ),
              Text(
                'Create invoices for your corporate clients or for regular futsal matches.',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              TxtBtn(
                txt: 'Create New Invoice',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateInvoice()));
                },
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Pinned Invoices',
          style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Medium'),
        ),
        SizedBox(
          height: 15,
        ),
        CustomlistTile(
          titles: '5 July (Rs. 3500)',
          image: 'assets/images/invoice.svg',
          subtitles: Text(
            'Ncell Corporate Invoice',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
          ),
          baccolour: Color(0xFFF4F4F4),
        ),
        SizedBox(
          height: 15,
        ),
        CustomlistTile(
          titles: '12 July (Rs. 10,400)',
          image: 'assets/images/invoice.svg',
          subtitles: Text(
            'MUSCN Event',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
          ),
          baccolour: Color(0xFFF4F4F4),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Previous Invoices',
          style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Medium'),
        ),
        SizedBox(
          height: 15,
        ),
        CustomlistTile(
          titles: '5 July (Rs. 3500)',
          image: 'assets/images/invoice.svg',
          subtitles: Text(
            'We Play',
            style: TextStyle(fontSize: 14, fontFamily: 'Airbnb Cereal Bold', color: Colors.black),
          ),
          baccolour: Color(0xFFF4F4F4),
        ),
      ],
    );
  }
}
