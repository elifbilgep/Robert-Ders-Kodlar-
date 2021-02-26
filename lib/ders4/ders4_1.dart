import 'package:flutter/material.dart';

class Ders4Bolum1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          pinned: false,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__340.jpg",
              fit: BoxFit.cover,
            ),
            title: Text(
              "Sliver App Bar Öğreniyorum",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            titlePadding: EdgeInsets.only(left: 60, bottom: 10),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.white,
                ),
                tooltip: "Ekleme",
                onPressed: () {
                  debugPrint("Ekleme Butonuna bastın");
                })
          ],
        ),
        //SliverList(
        //  delegate: SliverChildListDelegate(sabitListeElemani()),
        //)
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 100,
              color: Colors.blue.shade900,
              child: Center(child: Text("Sabit liste elemanı $index ")),
            );
          }, childCount: 20),
        ),
      ],
    ));
  }

  List<Widget> sabitListeElemani() {
    return [
      Container(
        height: 100,
        color: Colors.blue.shade900,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade800,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade700,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade600,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade600,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade600,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade500,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade400,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
      Container(
        height: 100,
        color: Colors.blue.shade300,
        child: Center(child: Text("Sabit liste elemanı")),
      ),
    ];
  }
}
