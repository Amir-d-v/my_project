import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 130,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome in own App",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  "login to continue",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 183, 4, 4),
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  width: 350,
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "+(20) 010-1234-5678",
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  width: 350,
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      Spacer(
                        flex: 1,
                      ),
                      Text("Amirashraf2222@gmail.com",
                          style: TextStyle(color: Colors.white)),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  width: 200,
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("login", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                ListTile(
                  title: Text("Don't have an account?"),
                  subtitle:
                      Text("Sign up", style: TextStyle(color: Colors.red)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ));
  }
}
