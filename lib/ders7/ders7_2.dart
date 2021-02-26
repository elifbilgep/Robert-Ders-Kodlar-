import 'package:flutter/material.dart';

class Ders7Bolum2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Font Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.pink.shade100,
              child: Center(
                  child: Text(
                "Selam",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "DancingScript",
                  fontSize: 30,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
