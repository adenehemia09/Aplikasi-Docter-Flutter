import 'package:flutter/material.dart';

class RiwayatPendidikan extends StatelessWidget {
  var hari;
  var jamDoc1;
  var jamDoc2;
  var jamDoc3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: ExpansionTile(
              title: Text('Riwayat Pendidikan'),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Universitas Muslim Indonesia',style:
                          TextStyle(fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('(2012)',style:
                        TextStyle(fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
