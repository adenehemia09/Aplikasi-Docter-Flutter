import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JamDoc extends StatelessWidget {
  var jamdoc;
  var icon;

  JamDoc(this.jamdoc, this.icon);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Column(
            children: [
              Icon(icon),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 160, 0),
                child: Text(jamdoc),
              ),
            ],
          ),
        ),
      ],
    );
  }
}