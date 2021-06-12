import 'package:doctor_apps/Screen/Detail_Doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor_apps/Model/Data Base Docter Anak.dart';


class  ListDocterAnak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListDock(
                  docterAnak[0].gambaarDoc,
                  docterAnak[0].namaDocter,
                  docterAnak[0].categoriDocter,
                  docterAnak[0].biayaKonsultasi
              ),
              ListDock(
                  docterAnak[1].gambaarDoc,
                  docterAnak[1].namaDocter,
                  docterAnak[1].categoriDocter,
                  docterAnak[1].biayaKonsultasi
              ),
              ListDock(
                  docterAnak[2].gambaarDoc,
                  docterAnak[2].namaDocter,
                  docterAnak[2].categoriDocter,
                  docterAnak[2].biayaKonsultasi
              ),
              ListDock(
                  docterAnak[0].gambaarDoc,
                  docterAnak[0].namaDocter,
                  docterAnak[0].categoriDocter,
                  docterAnak[0].biayaKonsultasi
              ),
              ListDock(
                  docterAnak[0].gambaarDoc,
                  docterAnak[0].namaDocter,
                  docterAnak[0].categoriDocter,
                  docterAnak[0].biayaKonsultasi,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListDock extends StatelessWidget {
  var gambarDoct;
  var nameDoc;
  var keahlihanDoc;
  var harga;

  @override

  ListDock(this.gambarDoct, this.nameDoc, this.keahlihanDoc, this.harga);

  Widget build(BuildContext context) {
    // TODO: implement build
    return
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return new DetailDoc ();
          }));
        },
        child: Container(
          height: 120,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200
                    ),
                    child: Image.asset(gambarDoct),
                  ),
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0,0, 0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(nameDoc, style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 45, 130, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text("Online", style: TextStyle(color: Colors.green),),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 60, 70, 0),
                        child: Center(child: Text(keahlihanDoc, style: TextStyle(color: Colors.grey),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 80, 140, 0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(harga, style: TextStyle(color: Colors.deepOrange),)),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
  }
}