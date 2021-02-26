import 'package:bos2/ders7/hero.dart';
import 'package:flutter/material.dart';

class Ders7Bolum6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Hero2(
                              imgPath:
                                  "https://i.pinimg.com/564x/e1/7d/21/e17d21b2471ecf5325899c845e69488c.jpg",
                            )));
              },
              child: Hero(
                tag: "1",
                              child: Container(
                  height: 300,
                  width: 200,
                  color: Colors.pink.shade100,
                  child: Image.network(
                    "https://i.pinimg.com/564x/e1/7d/21/e17d21b2471ecf5325899c845e69488c.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
