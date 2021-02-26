import 'package:flutter/material.dart';

class Ders6Bolum1 extends StatefulWidget {
  @override
  _Ders6Bolum1State createState() => _Ders6Bolum1State();
}

class _Ders6Bolum1State extends State<Ders6Bolum1> {
  String girilenMetin = " ";
  TextEditingController textEditingController1;

  @override
  void initState() {
    textEditingController1 =
        TextEditingController(text: "Selam controllerdan geldim");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textEditingController1.text = "Butondan  geldim";
        },
        child: Icon(Icons.edit),
      ),
      appBar: AppBar(
        title: Text("Input İşlemleri"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: textEditingController1,
              keyboardType: TextInputType.text,
              autofocus: false,
              autocorrect: false,
              maxLines: 1,
              maxLength: 10,
              maxLengthEnforced: true,
              cursorColor: Colors.purple.shade200,
              decoration: InputDecoration(
                  hintText: "Adınızı ve soyadınızı girin",
                  labelText: "Ad Soyad",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  icon: Icon(Icons.text_fields),
                  prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.blue.shade50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onSubmitted: (girilenDeger) {
                setState(() {
                  girilenMetin = girilenDeger;
                  debugPrint(girilenDeger);
                });
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              autocorrect: false,
              maxLines: 1,
              maxLength: 10,
              maxLengthEnforced: true,
              cursorColor: Colors.purple.shade200,
              decoration: InputDecoration(
                  hintText: "Malinizi girin",
                  labelText: "Mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  icon: Icon(Icons.text_fields),
                  prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.blue.shade50),
            ),
          ),
          Container(
            color: Colors.pink.shade50,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            child: Align(
              child: Text(girilenMetin),
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}
