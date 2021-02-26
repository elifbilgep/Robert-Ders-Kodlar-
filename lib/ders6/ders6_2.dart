import 'package:flutter/material.dart';

class Ders6Bolum2 extends StatefulWidget {
  @override
  _Ders6Bolum2State createState() => _Ders6Bolum2State();
}

class _Ders6Bolum2State extends State<Ders6Bolum2> {
  String adSoyad, sifre, email;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          hintColor: Colors.orange,
          primaryColor: Colors.pink.shade100,
          accentColor: Colors.blue),
      child: Scaffold(
        appBar: AppBar(
          title: Text("TextFormField ve Form"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            autovalidateMode: AutovalidateMode.disabled,
            key: formKey,
            child: ListView(
              children: [
                TextFormField(
                  onSaved: (girilenDeger) {
                    adSoyad = girilenDeger;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Adınızı girin",
                    labelText: "Ad ve Soyad",
                    border: OutlineInputBorder(),
                  ),
                  validator: (girilenDeger) {
                    if (girilenDeger.length < 6) {
                      return "Lütfen adınızı ve soyadınızı eksiksiz girin.";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (girilenDeger) {
                    email = girilenDeger;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: "Mail girin",
                      labelText: "Mail",
                      border: OutlineInputBorder()),
                  validator: (girilenDeger) {
                    if (!girilenDeger.contains("@")) {
                      return "Geçerli bir mail girin";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (girilenDeger) {
                    sifre = girilenDeger;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Şifre girin",
                      labelText: "Şifre",
                      border: OutlineInputBorder()),
                  validator: (girilenDeger) {
                    if (girilenDeger.length < 6) {
                      return "Lütfen şifreniz daha uzun olsun";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0, right: 100),
                  child: RaisedButton(
                    onPressed: girisBilgileriniKontrolEt,
                    color: Colors.blue.shade100,
                    child: Text("Kaydet"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void girisBilgileriniKontrolEt() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    }

    debugPrint("Girilen mail: $email , ad soyad: $adSoyad, şifre: $sifre");
  }
}
