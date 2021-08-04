import 'package:flutter/material.dart';
import 'package:newvenue/widgets/Yourcustomers/yourCustomersTabs/offline_customers.dart';
import 'package:newvenue/widgets/Yourcustomers/yourCustomersTabs/online_customers.dart';

import '../CustomTab.dart';

class OnlineOfflineCustomersPageView extends StatefulWidget {
  @override
  _OnlineOfflineCustomersPageViewState createState() => _OnlineOfflineCustomersPageViewState();
}

class _OnlineOfflineCustomersPageViewState extends State<OnlineOfflineCustomersPageView> {
  final List<Tab> tabList = [Tab(text: 'Online Users'), Tab(text: 'Offline Users')];

  // final List<Widget> widgetList = [
  //   Container(
  //     color: Colors.grey,
  //     child: ListView.builder(
  //       itemCount: User().getUserList.length,
  //       itemBuilder: (context, index) {
  //         final user = User().getUserList[index];
  //         return user.isOnline
  //             ? Card(
  //                 child: Container(
  //                   height: 80,
  //                   width: double.infinity,
  //                   child: Row(
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       CircleAvatar(
  //                         backgroundImage: AssetImage('assets/images/lalitpur 7A side.JPG'),
  //                         radius: 30,
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               )
  //             : Container(
  //                 height: 0,
  //                 width: 0,
  //               );
  //       },
  //     ),
  //   ),
  //   Container(
  //     color: Colors.grey,
  //     child: Center(
  //       child: Text(
  //         'Person',
  //       ),
  //     ),
  //   ),
  // ];

  // bool shouldChange = false;
  // int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTabBar(
          conheight: 200,
          tabbarwidth: 200,
          tabList: tabList,
          widgetList: [
            OnlineCustomers(),
            OfflineCustomers(),
          ],
        ),
        // SizedBox(
        //   height: 55,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     physics: const BouncingScrollPhysics(),
        //     padding: EdgeInsets.all(10),
        //     itemCount: 10,
        //     itemBuilder: (ctx, index){
        //       print('index : $index');
        //       return           GestureDetector(
        //         onTap: (){
        //           shouldChange = !shouldChange;
        //           if(selectedIndex == index){
        //             selectedIndex = -1;
        //           }else{
        //             selectedIndex = index;
        //           }
        //           print('should chane : $shouldChange');
        //           setState(() {
        //           });
        //         },
        //         onTapDown: (details){
        //
        //         },
        //         child: Container(
        //           decoration: BoxDecoration(
        //             color: selectedIndex == index ? Colors.teal: Colors.white,
        //             borderRadius: BorderRadius.circular(10),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.grey.withOpacity(0.4),
        //                 blurRadius: 5,
        //                 spreadRadius: 5,
        //               ),
        //             ],
        //           ),
        //           padding: EdgeInsets.symmetric(
        //             horizontal: 20.0,
        //             vertical: 7.0,
        //           ),
        //           margin: EdgeInsets.only(
        //             right: index == 9 ? 0.0 : 20.0,
        //           ),
        //           child: Text(
        //             '5 vs 5',
        //             style: TextStyle(
        //               color: selectedIndex == index ? Colors.white :Colors.teal,
        //             ),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
