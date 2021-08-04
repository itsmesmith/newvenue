import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<Tab> tabList;
  final List<Widget> widgetList;
  final double tabbarwidth;
  final double conheight;

  const CustomTabBar({Key? key, required this.tabList, required this.widgetList, required this.tabbarwidth, required this.conheight}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: widget.tabList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: widget.tabbarwidth,
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 0),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontFamily: 'Airbnb Cereal Medium',
                    fontSize: 12,
                  ),
                  indicator: BoxDecoration(border: Border(bottom: BorderSide(width: 2, color: Colors.black))),
                  unselectedLabelStyle: TextStyle(
                    fontFamily: 'Airbnb Cereal book',
                    fontSize: 12,
                  ),
                  tabs: widget.tabList,
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: widget.conheight,
                width: constraints.maxWidth,
                child: TabBarView(
                  children: widget.widgetList,
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
