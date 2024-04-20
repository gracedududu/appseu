import 'package:flutter/material.dart';

class NavDrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color:   Color.fromRGBO(150, 120, 85, 0.624),// Background color of the header
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/applogo 2.png', // Replace 'assets/cquere_logo.png' with your image asset path
                      height: 120, // Adjust height as needed
                      width: 120, // Adjust width as needed
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CQUERE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 248, 247, 247), // Color of the title text
                          ),
                        ),
                        SizedBox(height: 4), // Adjust the height as needed
                        Text(
                          'UPCAT,PUPCET,USTET,ACET,MAPUA,DLSUCET,DCAT,etc.', // Your additional text
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.black, // Color of the additional text
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border), // Icon for Favorites
            title: Text('Favorites', style: TextStyle(fontSize: 19)),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(1));
            },
          ),
          ListTile(
            leading: Icon(Icons.history), // Icon for Result History
            title: Text('Result History', style: TextStyle(fontSize: 19)),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(2));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline), // Icon for App Info
            title: Text('About CQUERE', style: TextStyle(fontSize: 19)),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(3));
              // Add your logic 
            },
          ),
        ],
      ),
    );
  }
}

class _NewPage extends MaterialPageRoute<void> {
  final int id;

  _NewPage(this.id)
      : super(
          builder: (BuildContext context) {
            String pageTitle;
            if (id == 3) {
              pageTitle = 'About CQUERE';
            } else {
              pageTitle = 'Page $id';
            }
            return Scaffold(
              appBar: AppBar(
                title: Text(pageTitle),
                elevation: 1.0,
              ),
              body: Column(
                children: [
                  if (id == 3) // Conditionally render for page 3 only
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'lib/applogo 2.png',
                                height: 200,
                                width: 200,
                              ),
                              SizedBox(width: 16),
                              Flexible(
                                child: Text(
                                  'COLLEGE QUEST\nREVIEW',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8), // Add space between text and additional text
                          Text(
                            '\nWelcome to College Quest Review (CQUERE)!\n\nYour Ultimate College Entrance Companion\n\nAt CQUERE, we\'re dedicated to helping you ace your entrance exams and secure admission to your dream college. With personalized guidance, comprehensive study materials, and a supportive community, CQUERE empowers you to reach your academic goals with confidence and ease.', // Your additional text
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 78, 77, 77),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Expanded(
                    child: Center(
                      child: Container(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
}
