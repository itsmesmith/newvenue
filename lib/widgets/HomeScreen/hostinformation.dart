import 'package:flutter/material.dart';

class HostInfo extends StatefulWidget {
  const HostInfo({Key? key}) : super(key: key);

  @override
  _HostInfoState createState() => _HostInfoState();
}

class _HostInfoState extends State<HostInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
      width: double.infinity,
      height: 200,
      color: Colors.pink.shade50,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Host Information',
                        style: TextStyle(fontFamily: 'Airbnb Cereal book'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Message from Association',
                      style: TextStyle(
                          fontFamily: 'Airbnb Cereal Bold', fontSize: 14)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      'Hear from Raj Maharjan, the chairman himself, on their plans for safe playing experiences in Futsal Venues.',
                      style: TextStyle(
                        fontFamily: 'Airbnb Cereal Medium',
                        fontSize: 12,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      //textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      // maxLines: 3,
                      //textAlign: TextAlign.center
                    ),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image(
                  image: AssetImage(
                    'assets/images/Raj Sir - Jersey Image.jpg',
                  ),
                  height: 180,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
