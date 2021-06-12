import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width *0.75,
          padding: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey,),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: TextField(
            decoration: InputDecoration.collapsed(hintText: 'Search Doctor'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
          child: Align(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xFF27DC27),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 11,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.search,
                color: Colors.white,
                ),
              ),
            ),
        ),
      ],
    );
  }
}
