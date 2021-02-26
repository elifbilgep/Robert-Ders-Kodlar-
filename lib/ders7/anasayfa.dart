import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 350,
              color: Colors.indigo.shade200,
              child: Center(child: Text("$index")),
            ),
          );
        },
      ),
    );
  }
}
