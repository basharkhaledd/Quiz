import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Text("Q1",
                  style: GoogleFonts.acme(
                    fontSize: 20,
                  )),
              Text(
                "Q2",
                style: GoogleFonts.acme(
                  fontSize: 20,
                ),
              ),
              Text("Q3",
                  style: GoogleFonts.acme(
                    fontSize: 20,
                  )),
              Text("Q4",
                  style: GoogleFonts.acme(
                    fontSize: 20,
                  )),
              Text("Q5",
                  style: GoogleFonts.acme(
                    fontSize: 20,
                  )),
              Text("Q6",
                  style: GoogleFonts.acme(
                    fontSize: 20,
                  )),
            ]),
            title: Text("Quiz App",
                style: GoogleFonts.acme(
                  fontSize: 20,
                )),
          ),
          body: TabBarView(children: [
            Qus(
              answer_1: "nice",
              answer_2: "long",
              answer_3: "not nice",
              answer_4: "fat",
              qus_text: "Which is a synonym of ugly?",
              real_answer: "not nice",
              numberOfQuestion: 1,
            ),
            Qus(
                answer_1: "warlike",
                answer_2: "skilful",
                answer_4: "bloody",
                answer_3: "deadly",
                qus_text: "Which is a synonym of pernicious?",
                real_answer: "skilful",
                numberOfQuestion: 2,
                ),
            Qus(
                answer_1: "custody",
                answer_2: "betrayal",
                answer_3: "quality",
                answer_4: "information",
                qus_text: "Which is a synonym of perfidy?",
                real_answer: "quality",
                numberOfQuestion: 3,
                ),
            Qus(
              answer_1: "grey",
              answer_2: "blue",
              answer_3: "red",
              answer_4: "black",
              qus_text: "what is a color in jordan flag?",
              real_answer: "red",
              numberOfQuestion: 4,
            ),
            Qus(
                answer_1: "cow",
                answer_2: "dog",
                answer_4: "cat",
                answer_3: "fly",
                qus_text: "what is the bigst animal form below?",
                real_answer: "cow",
                numberOfQuestion: 5,
                ),
            Qus(
              answer_1: "1",
              answer_2: "2",
              answer_3: "3",
              answer_4: "4",
              qus_text: "Which is the bigest number?",
              real_answer: "4",
              numberOfQuestion: 6,
            ),
          ]),
        ));
  }
}
