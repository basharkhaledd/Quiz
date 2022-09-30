import 'package:flutter/material.dart';

class AsnwerDialog {
  AsnwerDialog(context, String text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black38,
            content: Container(
              alignment: Alignment.center,
              child: Text(
                "$text",
                style: TextStyle(color: Colors.white),
              ),
              height: 100,
            ),
          );
        });
  }
}
