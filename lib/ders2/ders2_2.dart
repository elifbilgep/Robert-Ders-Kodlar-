import 'package:flutter/material.dart';

class Ders2Bolum2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [header()],
      ),
    );
  }

  Widget header() {
    return Container(
      height: 200,
      width: 500,
      color: Colors.brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ana Sayfa",
            style: TextStyle(
                color: Colors.brown.shade100,
                fontSize: 50,
                fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
