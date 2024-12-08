import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Home.dart';
import 'Services.dart';
import 'Account.dart';
import 'Activity.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});
  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  var currentIdx = 0;
  var pages = [
    const Home(),
    const Services(),
    const Activity(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 5,25,15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIdx = 0;
                    });
                  },
                  icon: Icon(Icons.home,
                      color: currentIdx == 0 ? Colors.black : Colors.grey,
                      size: 30)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIdx = 1;
                    });
                  },
                  child: Container(
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset(
                        'assets/dots-nine.svg',
                        colorFilter: ColorFilter.mode(
                            currentIdx != 1 ? Colors.grey : Colors.black,
                            BlendMode.srcIn),
                      ))),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIdx = 2;
                  });
                },
                child: Container(
                    height: 30,
                    width: 30,
                    child: currentIdx != 2
                        ? Image.asset('assets/billicon1.png')
                        : Image.asset('assets/billicon2.png')),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIdx = 3;
                    });
                  },
                  icon: Icon(
                    Icons.person,
                    color:currentIdx == 3?Colors.black: Colors.grey,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
      body: pages[currentIdx],
    );
  }
}
