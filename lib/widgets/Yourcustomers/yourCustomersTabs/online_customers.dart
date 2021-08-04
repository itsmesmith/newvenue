import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/models/users.dart';

class OnlineCustomers extends StatelessWidget {
  const OnlineCustomers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: User().getUserList.length,
        itemBuilder: (context, index) {
          final user = User().getUserList[index];
          return user.isOnline
              ? Card(
                  elevation: 0,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/lalitpur 7A side.JPG'),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.name!,
                                  style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 12),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  user.address!,
                                  style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            user.istopCustomer
                                ? Container(
                                    padding: EdgeInsets.all(5),
                                    height: 30,
                                    decoration: BoxDecoration(color: Color(0xFFF3F3F3), borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      children: [
                                        Icon(Icons.dangerous),
                                        Text(
                                          'Top Customer',
                                          style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 10, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  )
                                : Container(
                                    height: 0,
                                    width: 0,
                                  ),
                            Row(
                              children: [
                                Text(user.rating!.toString()),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              : Container(
                  height: 0,
                  width: 0,
                );
        },
      ),
    );
  }
}
