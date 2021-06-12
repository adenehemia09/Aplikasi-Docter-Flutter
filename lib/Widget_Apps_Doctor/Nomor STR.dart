import 'package:flutter/material.dart';

class NomorSTR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Card(

            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
        ),

          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.all(5) ,child: Icon(Icons.admin_panel_settings)),
                      Container(margin: EdgeInsets.all(5),child: Text('Nomor STR')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 2, 0, 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Text('7121201320130045')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}