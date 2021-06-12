import 'package:doctor_apps/Screen/Properti_Apps/Email.dart';
import 'package:doctor_apps/Screen/Error%20Screan.dart';
import 'package:doctor_apps/Screen/Tap Bar View.dart';
import 'package:doctor_apps/Screen/Percobaan/coba%20tapbar.dart';
import 'package:doctor_apps/Screen/Percobaan/tap%20bar.dart';
import 'package:flutter/material.dart';

class DetailCategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBCBCB),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.33,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFE8429B),
                      Color(0xFFA31B5F),
                    ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DIDOKTERIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> TabBarControllerWidget(),

                                  )
                              );
                            },
                            icon: Icon(Icons.email_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> Email(),
                                  )
                              );
                            },
                            icon: Icon(Icons.account_circle_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 135, 17, 0),
              child: Container(
                height: double.infinity,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                  ),
                  color: Color(0xFFFFFFFF),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE8429B),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset('images/agency-healthcare-clipart-5.png'))
                              ],
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 68, 0),
                                  child: Text(
                                    'Chat Bersama Dokter',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text('Chat dengan dokter umum dan spesialis'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: TabBarVieww(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 135, 0, 0),
                      child: Container(
                        height: 30,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF42B9E8),
                                Color(0xFFECECEC),
                              ]
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mitra resmi dari "),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset("images/Logo Kementrian Kesehatan.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class ContainerKu extends StatelessWidget{
  var namaCategori;

  ContainerKu(this.namaCategori);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(namaCategori,style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
      ),

    );
  }
}