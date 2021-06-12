import 'package:doctor_apps/Screen/Category_Screan.dart';
import 'package:doctor_apps/Screen/DetailScreanDock.dart';
import 'package:doctor_apps/Screen/LandingPage.dart';
import 'package:doctor_apps/Screen/Layanan%20Khusus_Screan.dart';
import 'package:doctor_apps/Widget_Apps_Doctor/Container%20Promo.dart';
import 'package:doctor_apps/Widget_Apps_Doctor/NavigationAndView.dart';
import 'package:doctor_apps/Widget_Apps_Doctor/Search%20Bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 20, 0, 2),
                          child: Text(
                            'Welcome Back',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 5, 0,8),
                          child: Text(
                            'Ade Nehemia',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.account_circle, size: 50,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

//=============================  Container Search  ======================================================
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SearchBar(),
                  ),
                ),
              ),
//=====================================  container Promo and information  ===============================================================
              Promo(),
//======================================= TEKS DAN NAVIGATION VIEW  =============================================
              NavigationTexst('Categories', 'Lihat semua', _LandingPageState(0)),
              // NavigationTexst('Coba', 'ke', Error2()),
              SizedBox(
                child: builcategorylist(),
              ),
              SizedBox(child: NavigationTexst('Layanan Khusus', 'Lihat semua', DocterDetail())),
              buildlayanankhusus(),
              SizedBox(child: NavigationTexst('Periksa Kesehatan Sendiri', 'Lihat semua', LayanaKhususScrean())),
              buildPeriksaKesehatanSendiri(),
            ],
          ),
        ),
      ),
    );
  }

  buildPeriksaKesehatanSendiri(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.white,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
        ],
      ),
    );
  }

  buildlayanankhusus(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          CategoryCart(
              'Spesialise\nKamdungan',
              Colors.black,
              'images/ibu mengandung 2.png'),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKamdungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          //CategoryCart.CategoryCart('Information\nCOVID-19', Colors.purple),
        ],
      ),
    );
  }

  builcategorylist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          CategoryCart('Docter\nUmum', Colors.blueAccent,'images/clip-art-dokter-6.png'),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nKandungan', Colors.black,'images/ibu mengandung 2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nMata', Colors.yellow,'images/mata-animasi-png-2.png',),
          SizedBox(width: 10),
          CategoryCart('Spesialise\nAnak', Colors.white,'images/smiling-baby.jpg',),
          SizedBox(width: 10),

        ],
      ),
    );
  }

  _LandingPageState(int i) {}
}