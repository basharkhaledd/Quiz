import 'package:flutter/material.dart';
import './models/functions.dart';
import 'models/Quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://image.freepik.com/free-photo/flat-lay-workplace-arrangement-purple-background-with-copy-space_23-2148404535.jpg"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white54,
                      content: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Quiz();
                                    }));
                                  },
                                  icon: Icon(Icons.people),
                                  label: Text(
                                    "Start the Quiz Now",
                                  )),
                            ],
                          )),
                    );
                  });
            },
            child: Container(
              color: Colors.black54,
              margin: EdgeInsets.only(left: 100),
              padding: EdgeInsets.all(20),
              width: 200,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Do you think you are good in english  ",
                      style: GoogleFonts.acme(
                        fontSize: 30,
                      ),
                    ),
                    TextSpan(
                      text: " Press me :)",
                      style: GoogleFonts.alike(
                          fontSize: 30, color: Colors.red.shade900),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
