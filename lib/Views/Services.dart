import 'package:flutter/material.dart';
import 'package:uberclone/Commons/AppbarComponent.dart';
import 'package:uberclone/Commons/servicesContainer.dart';
import 'package:uberclone/utils/commons.dart';

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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(0, 15,0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15,0,0,0),
                child: Text('Go anywhere, get anything', style: CommonStyles.cardTextStyle,),
              ),
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset('assets/uberbike.webp'),
                          ),
                          Container(
                            height: 50,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            alignment: Alignment.bottomLeft,
                            child: Text('Moto', style: TextStyle(fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset('assets/uberauto.webp'),
                          ),
                          Container(
                            height: 50,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            alignment: Alignment.bottomLeft,
                            child: Text('Uber Auto', style: TextStyle(fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
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
                    servicesContainer('assets/Services/rides.png', 'Trip'),
                    servicesContainer('assets/Services/rentals.png', 'Hourly'),
                    servicesContainer('assets/Services/reserve.png', 'Reserve'),
                  ],
                ),
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[200],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,20,0,0),
                child: Text('Get anything done', style: CommonStyles.cardTextStyle,),
              ),
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset('assets/Services/shop.png'),
                          ),
                          Container(
                            height: 20,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            alignment: Alignment.bottomLeft,
                            child: Text('Store Pick-up', style: TextStyle(fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset('assets/Services/Courier.png'),
                          ),
                          Container(
                            height: 20,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            alignment: Alignment.bottomLeft,
                            child: Text('Courier', style: TextStyle(fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          )),
    );
  }
}
