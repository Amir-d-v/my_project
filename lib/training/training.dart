import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  int counter = 0;
  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    dynamic check = 1;

    while (check == 1) {
      if (counter < 0) {
        check = false;
        resetCounter();
      } else {
        counter--;
      }
      return;
    }
  }

  void resetCounter() {
    counter = 0;
  }

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Points: ${widget.counter}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.incrementCounter();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: Text('data'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Points: ${widget.counter}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.decrementCounter();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: Text('decrement'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.resetCounter();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: Text('reset'),
                ),
                VerticalDivider(
                  color: const Color.fromARGB(255, 160, 32, 32),
                  thickness: 2,
                ),
              ],
            ),
            VerticalDivider(
              color: const Color.fromARGB(255, 160, 32, 32),
              thickness: 2,
              endIndent: 150,
              indent: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Points: ${widget.counter}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.incrementCounter();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: Text('data'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Points: ${widget.counter}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.decrementCounter();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: Text('decrement'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.resetCounter();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: Text('reset'),
                ),
                VerticalDivider(
                  color: const Color.fromARGB(255, 160, 32, 32),
                  thickness: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
