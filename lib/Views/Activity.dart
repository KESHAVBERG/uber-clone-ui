import 'package:flutter/material.dart';
import 'package:uberclone/Commons/Activity/Commons.dart';
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Upcoming',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(232, 232, 232, 1), // RGB color (Tomato)
                  width: 2, // Border width
                ),
              ),
              child: ListTile(
                title: Text(
                  "You have no upcoming trips",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text('Reserve your trip'),
                    Icon(Icons.arrow_right_alt)
                  ],
                ),
                trailing: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/Services/reserve.png'))),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Past',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200]
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image:const DecorationImage(
                        image: AssetImage('assets/activity/selective.png')
                      )
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
                color: Colors.white,
                child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 200,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/activity/map.jpeg")),
                        ),
                      ),
                     const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '2nd Ave',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      cardText('12Dec', '7:56am'),
                      cardText('0.00', 'Cancelled'),
                      SizedBox(height: 5,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:const Row(
                          children: [
                            Icon(Icons.refresh),
                            SizedBox(width: 5,),
                            Text('Rebook', style: TextStyle(fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 5,),

            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('assets/uberauto.webp'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15,0,0,0),
                        child: Text('2nd Ave', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                        child: cardText('12Dec', '7:56am'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                        child: cardText('0.00', 'Cancelled'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Row(
                      children: [
                        Icon(Icons.refresh),
                        SizedBox(width: 5,),
                        Text('Rebook', style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),
                ],

              ),
            ),
            SizedBox(height:25,),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('assets/uberauto.webp'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15,0,0,0),
                        child: Text('2nd Ave', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                        child: cardText('13Dec', '7:56am'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                        child: cardText('30.00', '2 Drivers'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Row(
                      children: [
                        Icon(Icons.refresh),
                        SizedBox(width: 5,),
                        Text('Rebook', style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
