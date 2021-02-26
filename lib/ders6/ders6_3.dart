import 'package:flutter/material.dart';

class Ders6Bolum3 extends StatefulWidget {
  @override
  _Ders6Bolum3State createState() => _Ders6Bolum3State();
}

class _Ders6Bolum3State extends State<Ders6Bolum3> {
  String deger = "Yeşil";
  List sehirler = ["İzmir", "Bursa", "İstanbul", "Ankara", "Yozgat"];
  String secilenSehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown buton"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            DropdownButton(
              items: [
                DropdownMenuItem(
                  child: Text("Kırmızı"),
                  value: "Kırmızı",
                ),
                DropdownMenuItem(
                  child: Text("Mavi"),
                  value: "Mavi",
                ),
                DropdownMenuItem(child: Text("Yeşil"), value: "Yeşil")
              ],
              onChanged: (secilen) {
                setState(() {
                  deger = secilen;
                });
              },
              value: deger,
              hint: Text("Seçiniz"),
            ),
            DropdownButton(
              items: sehirler.map((oAnKiSehir) {
                return DropdownMenuItem(child: Text(oAnKiSehir),value: oAnKiSehir,);
              }).toList(),
              onChanged: (oankiSehir) {
                setState(() {
                  secilenSehir = oankiSehir;
                });
              },
              value: secilenSehir,
            )
          ],
        ),
      ),
    );
  }
}
