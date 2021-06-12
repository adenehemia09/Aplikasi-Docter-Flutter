import 'package:doctor_apps/Widget_Apps_Doctor/JamDoc.dart';
import 'package:flutter/material.dart';

class JadwalDoc extends StatelessWidget {
  var hari;
  var jamDoc1;
  var jamDoc2;
  var jamDoc3;

  JadwalDoc(this.hari, this.jamDoc1, this.jamDoc2, this.jamDoc3);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,
                    width: 0.5),
              ),
              child: ExpansionTile(
                title: Text(hari),
                children: [
                  JamDoc(jamDoc1, Icons.access_time ),
                  SizedBox(height: 3),
                  JamDoc(jamDoc2, null),
                  SizedBox(height: 3),
                  JamDoc(jamDoc3, null),
                  SizedBox(height: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
