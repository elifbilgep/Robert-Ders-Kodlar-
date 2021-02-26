import 'package:flutter/material.dart';

class Ders3Bolum1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve ListTile"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Tek satırlık card"),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(
                size: 30,
              ),
              title: Text("Leading i olan tek satırlık listTile"),
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.more_vert),
              title: Text("Leading i olan tek satırlık listTile"),
              leading: FlutterLogo(),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("İki satırlık listtile"),
              subtitle: Text("Bu da ikinci  satır"),
              leading: FlutterLogo(),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.pink.shade50,
            child: ListTile(
              title: Text("3 satırlık list-tile"),
              subtitle: Text(
                  "burda çok uzun bir yazı yazıyor ve satır atlamam lazım"),
              isThreeLine: true,
              leading: FlutterLogo(
                size: 50,
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text("Black Mamba"),
                  subtitle: Text("Aespa"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          debugPrint("Bastın");
                        },
                        child: Text("Dinle")),
                    TextButton(
                        onPressed: () {
                          debugPrint("Bastın");
                        },
                        child: Text("Satın Al"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
