import 'package:flutter/material.dart';
import 'package:uberclone/Commons/AppbarComponent.dart';


class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarComponent("Activity"),
      body: Container(
        child: Text("Activity"),
      ),
    );
  }
}
