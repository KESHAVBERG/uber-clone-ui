import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uberclone/Commons/servicesContainer.dart';
import 'package:uberclone/Commons/titles.dart';
import '../Commons/AppbarComponent.dart';
import '../Commons/addressContainer.dart';
import '../utils/commons.dart';
import '../Commons/rideasyoulikecards.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  double paddingValue = 10.0;

  @override
  void initState() {
    super.initState();

    // Add a listener to detect scrolling
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection !=
          ScrollDirection.idle) {
        // User started scrolling
        setState(() {
          paddingValue = 0.0;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarComponent("Uber"),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: TextFormField(
                  textAlignVertical:
                      TextAlignVertical.center, // Align vertically
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Where To ?",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.grey[800]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ))),
                )),
            addressCard(
              context,
              "Thirumangalam Metro",
              "2nd Ave, L Block, Kurinji Colony, Anna Nagar, Chennai, Tamil Nadu 600040",
            ),
            addressCard(context, "Anna Nagar East",
                "2nd Ave, Block E, Annanagar East, Chennai, Tamil Nadu 600102"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleContainer("Suggestions"),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  servicesContainer('assets/uberbike.webp', 'Moto'),
                  servicesContainer('assets/uberauto.webp', 'Auto'),
                  Container(
                    height: 110,
                    width: 90,
                    margin:const EdgeInsets.fromLTRB(5, 15, 5, 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin:const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          decoration:const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/package.png'), fit: BoxFit.fill)),
                        ),
                        const Text('Package')
                      ],
                    ),
                  )
                ],
              ),
            ),
             Container(
              margin:const EdgeInsets.symmetric(horizontal: 15),
                child:const  Text('Ride as you like it', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25))
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: paddingValue, vertical: 5),
                scrollDirection: Axis.horizontal,
                children: [
                  rideasyoulikecontainer('assets/bookmoto.webp', 'Book Bike', 'Zip through traffic'),
                  SizedBox(width: 13,),
                  Container(
                   height: 230,
                   width: 300,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20)
                   ),
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
                             fit: BoxFit.cover,
                             image: AssetImage('assets/bookauto.jpg')
                           )
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 5),
                         child: Row(
                           children: [
                             Text('Book Auto', style:CommonStyles.cardTextStyle),
                             SizedBox(width: 5),
                             Icon(Icons.arrow_right_alt, size: 30,)
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(5, 0, 0,0),
                         child: Text('Everyday Commute made Effortless', style: TextStyle(fontSize: 17),),
                       )
                     ],
                   ),
                 ),
                  SizedBox(width: 15,),
                  rideasyoulikecontainer('assets/bookintracity.webp', 'Book Intercity', "Travel outstation with ease")

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
