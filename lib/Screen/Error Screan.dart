import 'package:flutter/material.dart';

class Error2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAFAFAF),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                  child: Center(child: Text(
                    '                  Hixss... !! '

                        '\n           Maaf Screan Ini'
                        '\nMasih Dalam Tahap Develop',
                    style: TextStyle(color: Colors.white, fontSize: 20),)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
                  child: Center(
                    child: Image.asset(
                      '3d-female-character-with-404-error-message_23-2148938897.png',
                      height: 270,width: 320,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 500, 0, 0),
                  child: Center(
                    child: Text(
                      'Aku Perbaiki Dulu Ya ^ _ ^ ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}