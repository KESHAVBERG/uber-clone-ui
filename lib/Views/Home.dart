import 'package:flutter/material.dart';
import 'package:uberclone/Commons/servicesContainer.dart';
import 'package:uberclone/Commons/titles.dart';
import '../Commons/AppbarComponent.dart';
import '../Commons/addressContainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  servicesContainer('assets/uberbike.webp', 'Moto'),
                  servicesContainer('assets/uberauto.webp', 'Auto'),
                  Container(
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
                          width: 50,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/package.png'), fit: BoxFit.fill)),
                        ),
                        Text('Package')
                      ],
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
