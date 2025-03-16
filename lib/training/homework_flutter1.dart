import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 360,
          color: Colors.blue[100],
          height: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 70,
                        height: 50,
                        color: Colors.red,
                        padding: EdgeInsets.all(16),
                        child: Center(
                            child: Text("A",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)))),
                    Container(
                        width: 70,
                        height: 50,
                        color: Colors.orange,
                        padding: EdgeInsets.all(16),
                        child: Center(
                            child: Text("B",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)))),
                    Container(
                        width: 70,
                        height: 50,
                        color: Colors.yellow,
                        padding: EdgeInsets.all(16),
                        child: Center(
                            child: Text("C",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)))),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                width: 300,
                height: 200,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text("Fancy Section",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 188, 10, 10))),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            color: Colors.purple,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(5),
                            child: Text("1",
                                style: TextStyle(color: Colors.white))),
                        Container(
                            color: Colors.purple,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(5),
                            child: Text("2",
                                style: TextStyle(color: Colors.white))),
                        Container(
                            color: Colors.purple,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(5),
                            child: Text("3",
                                style: TextStyle(color: Colors.white))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            color: Colors.purple,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(5),
                            child: Text("4",
                                style: TextStyle(color: Colors.white))),
                        Container(
                            color: Colors.purple,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(5),
                            child: Text("5",
                                style: TextStyle(color: Colors.white))),
                        Container(
                            color: Colors.purple,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(5),
                            child: Text("6",
                                style: TextStyle(color: Colors.white))),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Info Cards",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 90,
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text("23",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                        Text("Active",
                            style:
                                TextStyle(fontSize: 10, color: Colors.green)),
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text("15",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange)),
                        Text("Pending",
                            style:
                                TextStyle(fontSize: 10, color: Colors.orange)),
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text("7",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                        Text("Completed",
                            style: TextStyle(fontSize: 11, color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
