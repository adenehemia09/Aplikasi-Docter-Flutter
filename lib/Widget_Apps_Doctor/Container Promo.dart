import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF5BCEC9),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Image.asset('images/09-removebg-preview.png',
                          width: 150,
                          height: 145,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: Text(
                          'Ayo Konsultasi\nKesehatan Mu',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Langsung Oleh\nDokter Specialist',
                            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize:15,
                            )),
                      ),
                      Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Colors.amber,
                          onPressed: (){
                            // Aksi ketika button di klik
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('images/09.jpg'),
            ),
          ],
          options: CarouselOptions(
            height: 180,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
          )
      ),
    );
  }
}