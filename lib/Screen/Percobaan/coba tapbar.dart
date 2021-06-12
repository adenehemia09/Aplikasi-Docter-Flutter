import 'package:doctor_apps/Screen/List%20Docter%20Anak.dart';
import 'package:doctor_apps/Screen/List%20Docter%20Kandungan.dart';
import 'package:doctor_apps/Screen/SemuaDocter_Screan.dart';
import 'package:flutter/material.dart';

class TabBarControllerWidget extends StatefulWidget {
  const TabBarControllerWidget({Key key}) : super(key: key);
  @override
  _TabBarControllerWidgetState createState() => _TabBarControllerWidgetState();
}

class _TabBarControllerWidgetState extends State<TabBarControllerWidget>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(child: Text('dasdas', style: TextStyle(color: Colors.black),),),
    Tab(text: 'MIDDLE'),
    Tab(text: 'RIGHT'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 100, width: double.infinity,
            child: TabBar(
              controller: _tabController,
              tabs: myTabs,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: TabBarView(
              controller: _tabController, children: [
              SemuaDocter(),
              ListDocterAnak(),
              ListDocterKandungan(),
            ],
            ),
          ),
        ],
      )
    );
  }
}