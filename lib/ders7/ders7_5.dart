import 'package:flutter/material.dart';

class Ders7Bolum5 extends StatefulWidget {
  @override
  _Ders7Bolum5State createState() => _Ders7Bolum5State();
}

class _Ders7Bolum5State extends State<Ders7Bolum5>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Ana Sayfa",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favoriler",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Keşfet",
              ),
              Tab(
                icon: Icon(Icons.edit),
                text: "Düzenle",
              )
            ],
          ),
          title: Text("TabBar Kullanımı"),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Column(
              children: [
                Text(
                  "Ana Sayfa",
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
            Container(
              color: Colors.blue.shade100,
            ),
            Container(
              color: Colors.blue.shade200,
            ),
            Container(
              color: Colors.blue.shade300,
            ),
          ],
        ));
  }
}
