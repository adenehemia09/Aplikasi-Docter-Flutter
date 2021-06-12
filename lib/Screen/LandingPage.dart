import 'package:doctor_apps/Screen/Detail%20Categori%20Docter.dart';
import 'package:doctor_apps/Screen/Error%20Screan.dart';
import 'package:doctor_apps/Screen/HomePage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;

  List<Widget> _container = [
    new HomePage(),
    new DetailCategori(),
    new Error2()
  ];

  @override
  void _onItemTapped(int index) {
    setState(() {
      _bottomNavCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return Scaffold(
          body: _container[_bottomNavCurrentIndex],
          bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            currentIndex: _bottomNavCurrentIndex,
            items: [
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.home,
                  color: Color(0xFFA31B5F),
                ),
                icon: new Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: new Text('Beranda',
                    style: TextStyle(
                        color: _bottomNavCurrentIndex == 0
                            ? Color(0xFFA31B5F)
                            : Colors.grey)),
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.chat,
                  color: Color(0xFFA31B5F),
                ),
                icon: new Icon(
                  Icons.chat,
                  color: Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: new Text('Chat',
                    style: TextStyle(
                        color: _bottomNavCurrentIndex == 1
                            ? Color(0xFFA31B5F)
                            : Colors.grey)),
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.people,
                  color: Color(0xFFA31B5F),
                ),
                icon: new Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: new Text('Akun',
                    style: TextStyle(
                        color: _bottomNavCurrentIndex == 2
                            ? Color(0xFFA31B5F)
                            : Colors.grey)),
              ),
            ],
          )
    );
  }
}

/*@override
  void initState() {
    super.initState();
  }*/

/*{
              setState(() {
                _bottomNavCurrentIndex = index;
              }
              );

            },*/