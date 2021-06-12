import 'package:doctor_apps/Backend.dart';
import 'package:doctor_apps/Screen/LandingPage.dart';
import 'package:doctor_apps/Screen/Splase%20Screan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/Percobaan/state Manajemen.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Apps',
      theme: ThemeData(),
      // ignore: missing_required_param
      home: ChangeNotifierProvider(
          create: (context) => TukarIndex(),
          child: SplashScreen()),
    );
  }
}

/*
ChangeNotifierProvider<AplicationColor>(
        // ignore: deprecated_member_use
        create: (context) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<AplicationColor>(
              builder: (context, aplicationColor, _) => Text(
                'Provider State Manajement',
                style: TextStyle(color: aplicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<AplicationColor>(
                  builder: (context, aplicationColor, _) => AnimatedContainer(
                      height: 100,
                      width: 100,
                      color: aplicationColor.color,
                      duration: Duration(milliseconds: 500)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin:EdgeInsets.all(5),child: Text('AB')),
                    Consumer<AplicationColor>(builder: (contex, aplicationColor, _) => Switch(value: true, onChanged: (newValue){
                      aplicationColor.isLighBlue = newValue;
                    })),
                    Container(margin:EdgeInsets.all(5),child: Text('LB'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
 */

