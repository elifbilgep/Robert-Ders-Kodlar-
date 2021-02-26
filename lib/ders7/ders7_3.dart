import 'package:flutter/material.dart';

class Ders7Bolum3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("elf.prlk64@gmail.com"),
              accountName: Text("Elif Bilge parlak"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/564x/bc/d5/71/bcd571a9af01d6980d30760606b13940.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/24/78/8b/24788b935cdbddbe5da95bdec02dbd5b.jpg"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/ba/a4/12/baa412d9027dce2d1bfc442d95921b77.jpg"),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Ana Sayfa"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  AboutListTile(
                    applicationName: "Hesap makinesi",
                    applicationIcon: Icon(Icons.calculate),
                    applicationVersion: "2.0",
                    child: Text("Hakkımızda"),
                    applicationLegalese: null,
                    icon: Icon(Icons.arrow_right),
                    aboutBoxChildren: [Text("Text1"), Text("Text2")],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer Menü Kullaımı"),
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
