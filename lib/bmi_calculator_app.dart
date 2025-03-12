import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _color = Color(0xff15152f);
  double _currentSliderValue = 50;
  Color _color2 = Color(0xff15152f);

  void _changeColor() {
    setState(() {
      _color =
          _color == Color(0xff15152f) ? Color(0xff090b24) : Color(0xff15152f);
    });
  }

  void _changeColor2() {
    setState(() {
      _color2 =
          _color2 == Color(0xff15152f) ? Color(0xff090b24) : Color(0xff15152f);
    });
  }

  double _height = 170;
  int _weight = 70;
  int _age = 25;
  double _bmi = 0;

  void _incrementWeight() {
    _weight--;
  }

  void _crementWeight() {
    _weight++;
  }

  void _incrementAge() {
    _age--;
  }

  void _crementAge() {
    _age++;
  }

  void _calculateBMI() {
    setState(() {
      _bmi = _weight / ((_height / 100) * (_height / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentSliderValue = _currentSliderValue;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff03051a),
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
          backgroundColor: Color(0xff03051a),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _changeColor,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: _color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 100, color: Colors.white),
                          TextButton(
                            onPressed: () {
                              ;
                            },
                            child: Text(
                              'MALE',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _changeColor2,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: _color2,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 100, color: Colors.white),
                          TextButton(
                            onPressed: () {
                              ;
                            },
                            child: Text(
                              'FEMALE',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 370,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xff15152f),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$_height',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Slider(
                      value: _height,
                      min: 100,
                      max: 220,
                      divisions: 120,
                      label: _height.round().toString(),
                      activeColor: Colors.red,
                      inactiveColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          _height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xff15152f),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          '$_weight',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _crementWeight();
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                              backgroundColor:
                                  const Color.fromARGB(255, 208, 54, 54),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _incrementWeight();
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                              backgroundColor:
                                  const Color.fromARGB(255, 208, 54, 54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xff15152f),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          '$_age',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _crementAge();
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                              backgroundColor:
                                  const Color.fromARGB(255, 208, 54, 54),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _incrementAge();
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                              backgroundColor:
                                  const Color.fromARGB(255, 208, 54, 54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 54, 54),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          _calculateBMI();
                        },
                        child: Text(
                          'CALCULATE',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(999)),
                  color: const Color.fromARGB(255, 254, 251, 251),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          '$_bmi',
                          style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
