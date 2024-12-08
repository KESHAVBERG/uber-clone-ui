import 'package:flutter/material.dart';

import '../utils/commons.dart';

Widget rideasyoulikecontainer(String imgpath, String title, String content) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
    height: 230,
    width: 300,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightBlueAccent,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imgpath))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              Text(title, style: CommonStyles.cardTextStyle),
              const SizedBox(width: 5),
              const Icon(
                Icons.arrow_right_alt,
                size: 30,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Text(
            content,
            style: const TextStyle(fontSize: 17),
          ),
        )
      ],
    ),
  );
}
