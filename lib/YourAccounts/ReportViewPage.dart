import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newvenue/YourAccounts/ReportsTab/Details.dart';
import 'package:newvenue/YourAccounts/ReportsTab/Invoices.dart';
import 'package:newvenue/YourAccounts/ReportsTab/Overview.dart';
import 'package:newvenue/YourAccounts/ReportsTab/Reports.dart';
import 'package:newvenue/widgets/CustomTab.dart';

class ReportView extends StatefulWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  _ReportViewState createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  final List<Tab> tabList = [Tab(text: 'Overview'), Tab(text: 'Details'), Tab(text: 'Report'), Tab(text: 'Invoices')];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTabBar(conheight: 1420, tabbarwidth: 300, tabList: tabList, widgetList: [Overview(), Details(), Reports(), Invoices()]),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
