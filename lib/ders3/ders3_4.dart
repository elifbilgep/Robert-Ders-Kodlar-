import 'package:flutter/material.dart';

class Ders3Bolum4 extends StatelessWidget {
  List<String> adlar = [
    "Ece",
    "Naz",
    "Beyza",
    "Mustafa",
    "Ömer",
    "Mehmet",
    "Adnan",
    "Ezgi",
    "Nil"
  ];
  List soyad = [
    "Su",
    "Parlak",
    "Kurnaz",
    "Boz",
    "Nur",
    "Acun",
    "Göksü",
    "Akyüz",
    "Güleç"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: adlar.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/83/06/62/830662fc4b619fb47d7853925ef8afce.jpg"),
                ),
                title: Text("${adlar[index]}"),
                subtitle: Text("${soyad[index]}"),
              ),
            );
          }),
    );
  }
}
