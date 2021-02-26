import 'package:flutter/material.dart';

class Ders3Bolum3 extends StatelessWidget {
  //list.map
  List<int> listeNumaralari = List.generate(50, (sayi) {
    return sayi;
  });
  List<String> altbasliklar =
      List.generate(50, (sayi) => "Liste elemanın alt başlığı numarası: $sayi");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: altbasliklar.map((oAnKiEleman) => Card(
              child: ListTile(
                title: Text("$oAnKiEleman"),
              ),
            )).toList()
      ),
    );
  }
}
