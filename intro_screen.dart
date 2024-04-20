import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Color.fromRGBO(171, 147, 112, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/applogo 2.png', // replace with your image path
              width: 350,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              'CQUERE',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                 color: Color.fromARGB(255, 248, 247, 247), //
              ),
            ),
            Text(
              '\nCollege Quest Review',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text('Let\'s Learn'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 254, 0.801), // Change background color
                textStyle: TextStyle(color: Color.fromARGB(255, 70, 68, 68)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}