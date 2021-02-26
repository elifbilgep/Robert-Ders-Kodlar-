import 'package:bos2/ders6/ders6_2.dart';
import 'package:bos2/ders7/ders7_1.dart';
import 'package:bos2/ders7/ders7_5.dart';
import 'package:flutter/material.dart';
import 'ders2/ders2_1.dart';
import 'ders2/ders2_2.dart';
import 'ders2/ders2_3.dart';
import 'ders3/ders3_1.dart';
import 'ders3/ders3_2.dart';
import 'ders3/ders3_3.dart';
import 'ders3/ders3_4.dart';
import 'ders3/ders3_5.dart';
import 'ders4/ders4_2.dart';
import 'ders5/ders5_1.dart';
import 'ders6/ders6_1.dart';
import 'ders6/ders6_3.dart';
import 'ders7/ders7_2.dart';
import 'ders7/ders7_3.dart';
import 'ders7/ders7_4.dart';
import 'ders7/ders7_6.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // map yapısı => key, value
        //"/" : (context) => Ders5Bolum1(),
        "/CPage": (context) => CSayfasi(),
        "/EPage": (context) => ESayfasi(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Ders7Bolum6(),
    );
  }
}
