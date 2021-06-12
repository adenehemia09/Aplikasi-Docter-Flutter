

import 'package:doctor_apps/Screen/List%20Docter%20Anak.dart';
import 'package:doctor_apps/Screen/List%20Docter%20Kandungan.dart';
import 'package:doctor_apps/Screen/SemuaDocter_Screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarVieww extends StatefulWidget {
  @override
  _TabBarViewwState createState() => _TabBarViewwState();
}

class _TabBarViewwState extends State<TabBarVieww> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Stack(
          children: [
            Container(height: 50, width: double.infinity,
                child: ListView(
                  children: [
                    TabBar(
                      isScrollable: true, indicatorColor: Colors.black, indicatorWeight: 2, indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Tab(child: NameTab("Semua")),
                        Tab(child: NameTab("Anak"),),
                        Tab(child: NameTab("kandunggan")),
                        Tab(child: NameTab("Mata"),),
                      ],
                    ),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: TabBarView(
                children: <Widget>[
                  SemuaDocter(),
                  ListDocterAnak(),
                  ListDocterKandungan(),
                  ListDocterKandungan(),
                ],
              ),
            )
          ],
        ),
      ),

    );

  }
}

// ignore: must_be_immutable
class NameTab extends StatelessWidget {
  var nameCategori;
  NameTab(this.nameCategori);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      nameCategori,
      style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          fontSize: 17),
    );

  }
}