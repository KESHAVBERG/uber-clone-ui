import 'package:flutter/material.dart';

Widget servicesContainer(String imagepath, String name) {
  return Container(
    height: 110,
    width: 90,
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Container(
          height: 40,
          width: 40,
          margin:const EdgeInsets.fromLTRB(5, 15, 5, 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagepath), fit: BoxFit.fill)),
        ),
        Text(name)
      ],
    ),
  );
}
