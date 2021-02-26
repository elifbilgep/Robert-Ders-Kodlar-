import 'package:flutter/material.dart';

class Ders2Bolum3 extends StatefulWidget {
  @override
  _Ders2Bolum3State createState() => _Ders2Bolum3State();
}

class _Ders2Bolum3State extends State<Ders2Bolum3> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("Build çalıştı");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayiArttirma();
        },
        child: Icon(Icons.plus_one),
        elevation: 5,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sayaç Uygulaması"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona nu kadar bastınız:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "$sayac",
              style: Theme.of(context).textTheme.headline3,
              
            )
          ],
        ),
      ),
    );
  }

  void sayiArttirma() {
    setState(() {
      sayac = sayac + 1;
      debugPrint(sayac.toString());
    });
  }
}
