import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(25)),
                Text("Flutter layout demo",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Image(image: AssetImage('images/OIP.png')),
                ),
                Padding(padding: EdgeInsets.all(10)),
                ListTile(
                  title: Text(
                    "Oeschinen Lake Campground",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("kandersteg, Swizerland",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 180, 174, 174))),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.red),
                      Text("41", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Spacer(flex: 1),
                    Icon(Icons.call, color: Colors.purple),
                    Spacer(flex: 1),
                    Icon(Icons.near_me, color: Colors.purple),
                    Spacer(flex: 1),
                    Icon(Icons.share, color: Colors.purple),
                    Spacer(flex: 1),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Spacer(flex: 1),
                    Text("CALL", style: TextStyle(color: Colors.purple)),
                    Spacer(flex: 1),
                    Text("ROUTE", style: TextStyle(color: Colors.purple)),
                    Spacer(flex: 1),
                    Text("SHARE", style: TextStyle(color: Colors.purple)),
                    Spacer(flex: 1),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
