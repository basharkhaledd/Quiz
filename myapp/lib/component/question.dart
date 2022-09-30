import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/component/asnwer_dialog.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.real_answer,
    required this.numberOfQuestion
  });

  String? qus_text;
  String? answer_1;
  String? answer_2;
  String? answer_3;
  String? answer_4;
  String? real_answer;

  int ?numberOfQuestion;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 30),
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(
              "$qus_text",
              style: GoogleFonts.alike(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (answer_1 == real_answer) {
                AsnwerDialog(context, "good");

                child:
                Text("$answer_1",
                    style:
                        TextStyle(fontSize: 18, backgroundColor: Colors.amber));
              } else {
                AsnwerDialog(context, "Wrong");
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              alignment: Alignment.center,
              height: 40,
              child: Text(
                "$answer_1",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              if (answer_2 == real_answer) {
                AsnwerDialog(context, "good");
              } else {
                AsnwerDialog(context, "Wrong");
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.center,
              height: 40,
              child: Text(
                "$answer_2",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              if (answer_3 == real_answer) {
                AsnwerDialog(context, "good");
              } else {
                AsnwerDialog(context, "Wrong");
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.center,
              height: 40,
              child: Text(
                "$answer_3",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              if (answer_4 == real_answer) {
                AsnwerDialog(context, "good");
              } else {
                AsnwerDialog(context, "Wrong");
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.center,
              height: 40,
              child: Text(
                "$answer_4",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: Text("$numberOfQuestion /6",
            style: TextStyle(fontWeight: FontWeight.bold ),),
          )
        ],
      ),
    );
  }
}
