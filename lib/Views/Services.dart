import 'package:flutter/material.dart';
import 'package:uberclone/Commons/AppbarComponent.dart';



class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarComponent("Services"),
      body: Container(
        child: Text("Services"),
      ),
    );
  }
}
