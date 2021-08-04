import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MatchInvites extends StatefulWidget {
  const MatchInvites({Key? key}) : super(key: key);

  @override
  _MatchInvitesState createState() => _MatchInvitesState();
}

class _MatchInvitesState extends State<MatchInvites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your existing match invites'),
          _buildInviteCard('Shrish Malla', "5:00 AM - 6:00 AM", 'July 6', 7, 'assets/images/DSC_0311.JPG'),
          _buildInviteCard('Shrish Malla', "5:00 AM - 6:00 AM", 'July 6', 4, 'assets/images/lalitpur 7A side.JPG'),
          SizedBox(
            height: 10,
          ),
          Theme(
              data: ThemeData(canvasColor: Colors.transparent),
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Manage All Invites',
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

  Widget _buildInviteCard(String name, String time, String date, double rating, String player) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(color: Color(0xFFEBF6F4), borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(player),
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 14),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      //padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            time,
                            style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                          ),
                          Text(
                            date,
                            style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      // height: 16,
                      // width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/user.svg',
                                height: 16,
                                width: 16,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                rating.toString() + "/10",
                                style: TextStyle(fontFamily: 'Airbnb Cereal Medium'),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                minHeight: 10,
                                value: 0.3,
                                backgroundColor: Colors.white,
                                valueColor: rating > 5 == true ? AlwaysStoppedAnimation(Colors.green) : AlwaysStoppedAnimation(Colors.yellow),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
