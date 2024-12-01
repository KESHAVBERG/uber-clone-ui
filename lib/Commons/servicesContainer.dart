import 'package:flutter/material.dart';

Widget servicesContainer(String imagepath, String name) {
  return Container(
    height: 110,
    width: 90,
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Container(
          height: 70,
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagepath), fit: BoxFit.fill)),
        ),
        Text(name)
      ],
    ),
  );
}
