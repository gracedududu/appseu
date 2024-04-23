import'package:flutter/material.dart';

class ICTReview extends StatefulWidget {
  final int index;

  ICTReview({required this.index});

  @override
  _ICTReviewState createState() => _ICTReviewState();
}

class _ICTReviewState extends State<ICTReview> {
  bool showAdditionalText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'lib/applogo 2.png',
              height: 70, // Specify the height of the image
              width: 60.50, // Specify the width of the image
            ),
            SizedBox(width: 10), // Add some space between the image and text
            Text(
              'CQUERE',
              style: TextStyle(fontWeight: FontWeight.bold), // Make text bold
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      ' Information Technology Test #${index + 1}',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Questreview page when the button is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questreview(index: index)),
                      );
                    },
                    child: Text('view'),
                  ),
                ],
              ),
              tileColor: Colors.blue[100 * (index % 9 + 1)],
            );
          },
        ),
      ),
    );
  }
}
class Questreview extends StatefulWidget {
  final int index;
  Questreview({required this.index});
  @override
  _QuestreviewState createState() => _QuestreviewState();
}
class _QuestreviewState extends State<Questreview> {
  bool showAdditionalText = false;

  @override
  Widget build(BuildContext context) {
    String mainText = '';
    if (widget.index == 0) {
      mainText = '\n${widget.index + 1}.  What does CPU stand for?\n\n'
          'A.  Central Processing Unit \n'
          'B.        Central Process Unit \n'
          'C.  Computer Personal Unit \n'
          'D.    Central Processor Unit \n';
    } else if (widget.index == 1) {
      mainText = '\n${widget.index + 1}.  Which of the following is not an input device?\n\n'
          'A.      Mouse\n'
          'B.  Keyboard\n'
          'C.     Monitor\n'
          'D.       Printer\n';
    } else if (widget.index == 2) {
      mainText = '\n${widget.index + 1}.  What does HTML stand for?\n\n'
          'A.  HyperText Markup Language\n'
          'B.    HighTech Markup Language\n'
          'C.  HyperTech Markup Language\n'
          'D.     HyperText Model Language\n';
    } else if (widget.index == 3) {
      mainText = '\n${widget.index + 1}.  Which programming language is developed by Sun Microsystems?\n\n'
          'A.  Python\n'
          'B.       C++\n'
          'C.      Java\n'
          'D.      Ruby\n';
    } else if (widget.index == 4) {
      mainText = '\n${widget.index + 1}.  What does CSS stand for?\n\n'
          'A.  Computer Style Sheets\n'
          'B. Cascading Style Sheets\n'
          'C.     Creative Style Sheets\n'
          'D.     Colorful Style Sheets\n';
    } else if (widget.index == 5) {
      mainText = '\n${widget.index + 1}.  What is the full form of URL?\n\n'
          'A.  Universal Resource Locator\n'
          'B.    Uniform Resource Locator\n'
          'C.      Unified Resource Locator\n'
          'D.      Unique Resource Locator\n';
    } else if (widget.index == 6) {
      mainText = '\n${widget.index + 1}.  Which protocol is used to send email?\n\n'
          'A.  SMTP\n'
          'B.     POP\n'
          'C.   HTTP\n'
          'D.      FTP\n';
    } else if (widget.index == 7) {
      mainText = '\n${widget.index + 1}.  What does LAN stand for?\n\n'
          'A.     Local Area Network\n'
          'B.     Large Area Network\n'
          'C.  Logical Area Network\n'
          'D.       Low Area Network\n';
    } else if (widget.index == 8) {
      mainText = '\n${widget.index + 1}.  Which company developed the Android operating system?\n\n'
          'A.         Apple\n'
          'B.  Microsoft\n'
          'C.       Google\n'
          'D.   Samsung\n';
    } else if (widget.index == 9) {
      mainText = '\n${widget.index + 1}.  What is the purpose of a firewall in a computer network?\n\n'
          'A.        To block \nunauthorized access\n'
          'B.  To speed up\n internet connection\n'
          'C.         To store \nbackup data\n'
          'D.   To increase \ncomputer performance\n';
    } else if (widget.index == 10) {
      mainText = '\n${widget.index + 1}. What does ICT stand for?\n\n'
          'A.               International \nComputer Technology\n'
          'B.           Information and Communication Technology\n'
          'C.    Internet Connection \nTools\n'
          'D. Intelligent Computing Techniques\n';
           } else if (widget.index == 11) {
      mainText = '\n${widget.index + 1}. What does the acronym "GUI" stand for?\n\n'
          'A. Graphical User Interface\n'
          'B.    General User Interface\n'
          'C.   Graphic Understanding Interface\n'
          'D.   Grouped User Interface\n';
          } else if (widget.index == 12) {
      mainText = '\n${widget.index + 1}. Which of the following programming languages is not object-oriented?\n\n'
          'A.     Java\n'
          'B. Python\n'
          'C.      C++\n'
          'D. Fortran\n';
          } else if (widget.index == 13) {
      mainText = '\n${widget.index + 1}. What protocol is used for transferring files over the Internet?\n\n'
          'A.   HTTP\n'
          'B.      FTP\n'
          'C.   SMTP\n'
          'D. TCP/IP\n';
           } else if (widget.index == 14) {
      mainText = '\n${widget.index + 1}. What does DNS stand for in the context of computer networks?\n\n'
          'A.     Domain Network Service\n'
          'B.    Dynamic Naming System\n'
          'C.         Domain Name System\n'
          'D. Distributed Network Server\n';   
    }else {
      mainText = 'This is the ICT Test Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(171, 147, 112, 1),
       title: Row(
      children: [
        Text(
          ' Information Technology Test',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
        ),
        SizedBox(width: 10), // Add some space between the text and image
        Image.asset(
        'lib/design 3.png',
          height: 70, // Specify the height of the image
          width: 55, // Specify the width of the image
        ),
      ],
    ),
  ),
        body: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              mainText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),      
          if (widget.index == 0 || widget.index == 1|| widget.index == 2 || widget.index == 3 || widget.index == 4 || widget.index == 5 || widget.index == 6 || widget.index == 7 || widget.index == 8 || widget.index == 9|| widget.index == 10|| widget.index == 11 || widget.index == 12 || widget.index == 13 || widget.index == 14 ) ...[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showAdditionalText = !showAdditionalText;
                });
              },
              child: Text(showAdditionalText ? 'Hide Answer' : 'Show Answer'),
            ),
            if (showAdditionalText && widget.index == 0)
          Padding(
            padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'A. Central Processing Unit\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 1)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'C. Monitor\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 2)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'A. HyperText Markup Language\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 3)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'C. Java\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 4)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'B. Cascading Style Sheets\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 5)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'B. Uniform Resource Locator\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 6)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'A. SMTP\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
),
if (showAdditionalText && widget.index == 7)
Padding(
padding: const EdgeInsets.all(8.0),
child: Center(
child: Text(
'A. Local Area Network\n\n',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
),
),
          ),
        if (showAdditionalText && widget.index == 8)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'C. Google\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        if (showAdditionalText && widget.index == 9)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'A. To block unauthorized access\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),              
          ),
            if (showAdditionalText && widget.index == 10)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Information and Communication Technology\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
               if (showAdditionalText && widget.index == 11)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'A. Graphical User Interface\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
               if (showAdditionalText && widget.index == 12)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'D. Fortran\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
                if (showAdditionalText && widget.index == 13)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. FTP\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              if (showAdditionalText && widget.index == 14)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'C. Domain Name System \n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
      Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (widget.index > 0) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Questreview(index: widget.index - 1)),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 220, 216, 216), // Change background color
                    textStyle: TextStyle(color: Colors.white), // Change text color
                  ),
                  child: Text('Back', style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (widget.index < 14) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Questreview(index: widget.index + 1)),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 220, 216, 216), // Change background color
                    textStyle: TextStyle(color: Colors.white), // Change text color
                  ),
                  child: Text('Next', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ],
      ),
        ),
    );
  }
}


