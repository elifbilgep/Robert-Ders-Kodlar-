import 'package:bos2/ders7/anasayfa.dart';
import 'package:bos2/ders7/kesfet.dart';
import 'package:flutter/material.dart';

class Ders7Bolum4 extends StatefulWidget {
  @override
  _Ders7Bolum4State createState() => _Ders7Bolum4State();
}

class _Ders7Bolum4State extends State<Ders7Bolum4> {
  List<Widget> tumSayfalar;
  int secilenMenuItem = 0;
  AramaSayfasi aramaSayfasi;
  AnaSayfa anaSayfa;
  var keyAnaSayfa = PageStorageKey("anasayfa_key");
  var keyAramaSayfasi = PageStorageKey("aramaSayfasi_key");
  @override
  void initState() {
    anaSayfa = AnaSayfa(keyAnaSayfa);
    aramaSayfasi = AramaSayfasi(keyAramaSayfasi);
    tumSayfalar = [anaSayfa, aramaSayfasi];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Keşfet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favoriler"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: secilenMenuItem,
        onTap: (tiklanilanItemIndeksi) {
          setState(() {
            secilenMenuItem = tiklanilanItemIndeksi;
          });
        },
      ),
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: tumSayfalar[secilenMenuItem],
    );
  }
}
