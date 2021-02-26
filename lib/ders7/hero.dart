import 'package:flutter/material.dart';

class Hero2 extends StatefulWidget {
  var imgPath;
  Hero2({this.imgPath});

  @override
  _Hero2State createState() => _Hero2State();
}

class _Hero2State extends State<Hero2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resim Detay"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "1",
              child: Container(
                height: MediaQuery.of(context).size.height - 80,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink.shade100,
                child: Image.network(
                  widget.imgPath,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
