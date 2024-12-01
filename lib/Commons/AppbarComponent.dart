import 'package:flutter/material.dart';

PreferredSizeWidget appbarComponent(String title) {
  return AppBar(
      title: Padding(
          padding:const EdgeInsets.fromLTRB(2, 15, 0, 2),
          child: Text(
            title,
            style:const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
      )
  );
}
