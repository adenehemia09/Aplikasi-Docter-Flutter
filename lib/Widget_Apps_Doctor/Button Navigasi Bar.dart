import 'package:doctor_apps/Screen/Error%20Screan.dart';
import 'package:doctor_apps/Screen/HomePage.dart';
import 'package:doctor_apps/Screen/produk.dart';
import 'package:flutter/material.dart';
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}
class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new HomePage(), new Produk(), new Error2()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Colors.red,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: new Text('Beranda',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.red
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.assignment,
                color: Colors.red,
              ),
              icon: new Icon(
                Icons.assignment,
                color: Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: new Text('Produk',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.red
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.people,
                color: Colors.red,
              ),
              icon: new Icon(
                Icons.people,
                color: Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: new Text('Akun',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.red
                          : Colors.grey)),
            ),
          ],
        ));
  }
}