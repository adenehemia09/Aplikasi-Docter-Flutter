import 'package:doctor_apps/Widget_Apps_Doctor/Jadwal%20Docter.dart';
import 'package:doctor_apps/Widget_Apps_Doctor/Nomor%20STR.dart';
import 'package:doctor_apps/Widget_Apps_Doctor/RiwayatPendidikan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocterDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Column(
                children: [
                  Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                    child: Column(
                      children: [
                        Container(
                            height: 260,
                            width: double.infinity,
                            child: Image.asset('images/dr Citra Farmalita Sp M.jpeg')
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text('dr. Natami Dewi Ratih, sp.OG, M.Kes',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 15),
                          child: Center(child: Text('Dokter Spesialis Kandungan',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          ),
                        )

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Card( shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(11, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                                child: Text('Jadwal Chat Online',
                                style: TextStyle( color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16
                                ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(13, 10, 13, 25),
                            child: Column(
                              children: [
                                JadwalDoc('Selasa','07.00-09.00', '09.00-12.00', '12.00-13.00'),
                                JadwalDoc('Selasa','07.00-09.00', '09.00-12.00', '12.00-13.00'),
                                JadwalDoc('Selasa','07.00-09.00', '09.00-12.00', '12.00-13.00'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: NomorSTR(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: RiwayatPendidikan(),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}