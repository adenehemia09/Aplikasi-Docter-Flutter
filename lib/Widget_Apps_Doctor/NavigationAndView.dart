import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavigationTexst extends StatelessWidget {
  var nameKategori;
  var nameView;
  var nameTujuan;
  NavigationTexst(this.nameKategori, this.nameView, this.nameTujuan);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    nameKategori,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=> nameTujuan,
                            )
                        );
                      },
                      child: Text(nameView,style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),),
                    )
                ),
              ],
            ),
          ],
        )
    );
  }
}