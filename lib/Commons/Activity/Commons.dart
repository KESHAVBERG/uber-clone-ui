import 'package:flutter/material.dart';

Widget cardText(String text1, String text2) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
        Text(text1),
        SizedBox(
          width: 2,
        ),
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(
          width: 2,
        ),
        Text(text2),
      ],
    ),
  );
}
