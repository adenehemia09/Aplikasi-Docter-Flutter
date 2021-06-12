import 'package:doctor_apps/Backend.dart';
import 'package:doctor_apps/Screen/HomePage.dart';
import 'package:doctor_apps/Screen/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


// ini adalah gabungan dari  beberapa baris yang banyak sekali kartu
class CategoryScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF3383CD),
                          Color(0xFF11249F),
                        ]
                    ),
                    color: const Color(0xFF04206A),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(55),
                      bottomRight: Radius.circular(55),
                    ),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ignore: deprecated_member_use
                            IconButton(
                              onPressed: () {                         Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> LandingPage(),
                                  )
                              ); },
                              icon: Icon(Icons.west,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            IconButton(
                              onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> HomePage(),
                                  )
                              );
                              },
                              icon: Icon(Icons.email_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),],),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 9, 0, 3),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Temukan Bebagai Docter',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 3, 0, 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Bebagai Docter Umum dan Spesialis',
                            style: TextStyle(color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 17, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              height: 200,width: 200,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                  'images/Doctor_Monochromatic.png')
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: BarisCart(
                    'Docter\nUmum',
                    Colors.blueAccent,'images/clip-art-dokter-6.png',
                    'Spesialis\nKandungan',
                    Colors.blueAccent,
                    'images/ibu mengandung 2.png'
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: BarisCart(
                    'Spesialis\nAnak',
                    Colors.white,'images/smiling-baby.jpg',
                    'Spesialise\nMata',
                    Colors.yellow,
                    'images/mata-animasi-png-2.png'
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: BarisCart(
                    'Spesialis\nBedah',
                    Colors.white,'images/bedah.jpg',
                    'Spesialise\nKandungan',
                    Colors.blueAccent,
                    'images/ibu mengandung 2.png'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ini adalah  2 kartu gabungan didalam satu baris

// ignore: must_be_immutable
class BarisCart extends StatelessWidget {
  var nameCard01;
  var nameCard02;
  var image01;
  var image02;
  var warna01;
  var warna02;

  BarisCart(this.nameCard01, this.warna01, this.image01, this.nameCard02, this.warna02, this.image02);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(width: 28,),
        Column(
          children: [
            CategoryCart(nameCard01, warna01, image01),
          ],
        ),
        SizedBox(width: 28,),
        Column(
          children: <Widget>[
            CategoryCart(nameCard02, warna02, image02),
          ],
        ),
        SizedBox(width: 28,),
      ],
    );
  }
}

// ini adalah Kartu satuan dari jenis docter yang terkecil dan spesifik

// ignore: must_be_immutable
class CategoryCart extends StatelessWidget {
  var nameCard;
  var warna;
  var image;
  int index;

  // ignore: non_constant_identifier_names
  CategoryCart(this.nameCard, this.warna, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 130,
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LandingPage(),),
          );
        },
        child: Stack(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 115, height: 137,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Text(nameCard,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: warna,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(image),
              ),
            ),
          ],
        ),
      ),

    );
  }
}