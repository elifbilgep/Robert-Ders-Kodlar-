import 'package:flutter/material.dart';

class Ders7Bolum1 extends StatefulWidget {
  @override
  _Ders7Bolum1State createState() => _Ders7Bolum1State();
}

class _Ders7Bolum1State extends State<Ders7Bolum1> {
  bool checkBoxState = false;
  String sehir;
  bool switchListState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CheckBox Radio ve Switch Widgetları"),
        ),
        body: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (tiklanilanDeger) {
                setState(() {
                  checkBoxState = tiklanilanDeger;
                });
              },
              title: Text("Checkbox Title"),
              subtitle: Text("CheckBox Subtitle"),
              secondary: Icon(Icons.add),
              activeColor: Colors.pink.shade100,
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
                title: Text("Ankara"),
                value: "Ankara",
                groupValue: sehir,
                onChanged: (deger) {
                  setState(() {
                    sehir = deger;
                    debugPrint("seçilen değer: $sehir");
                  });
                }),
            RadioListTile(
                title: Text("İzmir"),
                value: "İzmir",
                groupValue: sehir,
                onChanged: (deger) {
                  setState(() {
                    sehir = deger;
                    debugPrint("seçilen değer: $sehir");
                  });
                }),
            RadioListTile(
                title: Text("Antalya"),
                value: "Antalya",
                groupValue: sehir,
                onChanged: (deger) {
                  setState(() {
                    sehir = deger;
                    debugPrint("seçilen değer: $sehir");
                  });
                }),
            SwitchListTile(
              value: switchListState,
              onChanged: (deger) {
                setState(() {
                  switchListState = deger;
                  debugPrint("$switchListState");
                });
              },
              title: Text("Switch List Tile Title"),
              subtitle: Text("Switch List Tile Subtitle"),
            ),
          ],
        ));
  }
}
