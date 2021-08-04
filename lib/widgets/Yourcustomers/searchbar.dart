import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image(
          image: AssetImage('assets/images/lalitpur 7A side.JPG'),
          width: double.infinity,
          height: 140,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Customers',
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
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(7), boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  )
                ]),
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
                      'Search Customers',
                      style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
