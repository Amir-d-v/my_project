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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Travel Destination',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                trailing: Container(
                  width: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Icon(Icons.favorite_border_outlined),
                      Spacer(
                        flex: 2,
                      ),
                      Icon(Icons.share),
                    ],
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                    'images/WhatsApp Image 2025-03-09 at 6.24.00 AM.jpeg'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 230,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 178, 176, 176),

                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                        width: 60,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: const Color.fromARGB(255, 237, 195, 133),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              '4.1',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                          ],
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.red,
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      indent: 15,
                      thickness: 1,
                      endIndent: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(49, 19, 66, 187),
                            borderRadius:
                                BorderRadius.all(Radius.circular(999)),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(118, 75, 190, 60),
                            borderRadius:
                                BorderRadius.all(Radius.circular(999)),
                          ),
                          child: Icon(Icons.near_me, color: Colors.green),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(114, 213, 133, 235),
                            borderRadius:
                                BorderRadius.all(Radius.circular(999)),
                          ),
                          child: Icon(Icons.share, color: Colors.purple),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Call',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Text(
                          'Route',
                          style: TextStyle(fontSize: 15, color: Colors.green),
                        ),
                        Text(
                          'share',
                          style: TextStyle(fontSize: 15, color: Colors.purple),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(999)),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(113, 9, 9, 255),
                              const Color.fromARGB(255, 3, 7, 239),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              size: 25,
                            ),
                            Text(
                              'About',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 370,
                    height: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 153, 204, 236),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 178, 176, 176),

                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bookmark, color: Colors.blue, size: 30),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '1.578m above sea level',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(
                          'The Oeschinen Lake Campground is at an elevation of 1,578 meters above sea level. The campground is located in the Bernese Oberland region of Switzerland, near the town of Kandersteg, a beautiful alpine lake surrounded by mountains. The campground is a popular destination for hikers, campers, and outdoor enthusiasts, who come to enjoy the stunning  There are also a number of hiking trails in the area, ranging from easy walks to more challenging hikes.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
