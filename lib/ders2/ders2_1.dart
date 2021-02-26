
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/8a/52/60/8a526077375619da616d3f357a88f8e5.jpg"),
                  ),
                ),
                Placeholder(
                  fallbackHeight: 50,
                  fallbackWidth: 250,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.pink,
                  height: 150,
                  width: 100,
                  child: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/22/21/e7/2221e7110eb06cd91c4d649fdc223ae9.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  child: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/4f/5c/5c/4f5c5c261903fa83a409468958973910.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    height: 150,
                    width: 100,
                    child: FadeInImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/564x/c4/83/36/c483364a3e69a035a73e6a31d9d2e98c.jpg"),
                      placeholder: AssetImage("assets/images/wait.png"),
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/images/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/images/2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  child: Image(
                    image: AssetImage("assets/images/3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
