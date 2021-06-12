import 'package:doctor_apps/Widget_Apps_Doctor/Jadwal%20Docter.dart';
import 'package:flutter/material.dart';

class LayanaKhususScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Image.asset('images/5 Image.jpg')),
            Container(
              margin: EdgeInsets.only(top: 0),
              height: 500,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
            ),

          ],
        ),



      )
    );
  }
}
