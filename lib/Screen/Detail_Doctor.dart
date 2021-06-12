import 'package:doctor_apps/Widget_Apps_Doctor/Jadwal%20Docter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor_apps/Model/Data Base Docter Kandungan.dart';

class DetailDoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
        /*
      appBar: AppBar(
        title: Text('Chat Docter'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      */
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Container(
                      color: Colors.white,
                      height: 300,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 250,
                              child: new Image.asset(
                                //Gambar Docter Sesuai Kategori yang dicari USER
                                  docterKandungan[0].gambaarDoc, width: 300, height: 100,
                              ),
                            ),
                          ),
                        ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 230, 13, 0),
                        child: Container(
                          height: MediaQuery.of(context).size.height*1.1,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5,),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text( //Nama Docter
                                      'Docter aja',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24, color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text( // Categori Docter
                                    'Docter Umum',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Texss('Alumni', 'asdasdsad'),
                              SizedBox(
                                height: 15,
                              ),
                              Texss('Jadwal Chat Online', ''),
                              SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: JadwalDoc( // Waktu Online Docter
                                    'asdsadsadas',
                                    'dasdasdsad',
                                    'sdsadsadsad',
                                    'sdsadsadsad',
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: JadwalDoc( // Waktu Online Docter
                                    'sdsadasdasd',
                                    'asdsadasdsad',
                                    'sadsadasdsad',
                                    'asdasdasd'),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: JadwalDoc( // Waktu Online Docter
                                    'sdsadasdasd',
                                    'asdsadasdsad',
                                    'sadsadasdsad',
                                    'asdasdasd'),
                              ),

                              Texss('Tempat Prakktik', 'dsadasdasd'),
                              Texss('Nomor STR', '3311100220152279'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          //SingleChildScrollView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child:Container(
                margin: EdgeInsets.symmetric(vertical: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        children: [
                          Container(child: Text(
                            'Biaya Konsultasi',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(child: Text(
                            'sdddsfsdfsd',
                            style: TextStyle(color: const Color(0xFFFF6C00),
                                fontSize: 17),)
                          ),
                        ],
                      ),

                    MaterialButton(
                      onPressed: () {

                      },
                      color: const Color(0xFFFF6C00),
                      padding: EdgeInsets.symmetric(
                        horizontal: 17,
                        vertical: 13,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        'Chat Sekarang',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Texss extends StatelessWidget {
  var judulTexs;
  var subJudul;
  Texss(this.judulTexs, this.subJudul);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 18, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              judulTexs,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(60, 5, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text( // Alumni Docter
              subJudul,
              style: TextStyle(fontSize: 17 ),
            ),
          ),
        ),
      ],
    );
  }
}

