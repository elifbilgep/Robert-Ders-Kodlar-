import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Ders5Bolum1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String baslik = "B sayfasına hoşgeldiniz";
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfalar arası geçiş"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ASayfasi();
                }));
              },
              color: Colors.purple.shade100,
              child: Text("A sayfasına git"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BSayfasi(baslik)));
              },
              color: Colors.purple.shade200,
              child: Text("B sayfasına git ve veri götür"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/CPage").then(
                    (popDanSonraGelenDeger) => debugPrint(
                        "popdan sonra gelen değer: $popDanSonraGelenDeger"));
              },
              color: Colors.purple.shade200,
              child: Text("C sayfasına git ve veri getir"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/EPage");
              },
              color: Colors.purple.shade100,
              child: Text(" E sayfasına git ve sonradan silin"),
            )
          ],
        ),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A sayfası"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("A sayfası"),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.pink.shade100,
              child: Text("Geri dön"),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;
  BSayfasi(String baslik) {
    gelenBaslikVerisi = baslik;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gelenBaslikVerisi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("B sayfası"),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.pink.shade100,
              child: Text("Geri dön"),
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("C sayfası"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("C sayfası"),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  color: Colors.pink.shade100,
                  child: Text("Geri dön"),
                ),
              ],
            ),
          ),
        ),
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        });
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E sayfası"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("E sayfası"),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              color: Colors.pink.shade100,
              child: Text("F sayfasina git"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FSayfasi()));
              },
              color: Colors.pink.shade100,
              child: Text("F sayfasi"),
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("F sayfası"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
