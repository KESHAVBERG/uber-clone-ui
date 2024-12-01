import 'package:flutter/material.dart';
import 'package:uberclone/Views/Wrapper.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'ubermove'),
      title: 'Uber Clone',
      home: const Wrapper(),
    );
  }
}
