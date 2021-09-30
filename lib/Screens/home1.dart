import 'package:flutter/material.dart';
import 'package:qlrider/Screens/payment.dart';
import 'package:qlrider/Screens/upcoming.dart';

import '../drawer.dart';
import 'consts/const.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 0.0;

  double height = 0.0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
    return SafeArea(
        child: Scaffold(       key: _scaffoldKey,

      drawer: Profile1(),
 
            body: Stack(children: [
      SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          'assets/loc.png',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        alignment: Alignment.topLeft,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey),
          color: ColorsConsts.whiteColor,
        ),
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Align(
          child: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                ),
                iconSize: 20,
                color: ColorsConsts.blackColor,
                onPressed: () {  Scaffold.of(context).openDrawer();
                            },
              );
            }
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: ColorsConsts.whiteColor,
          ),
          height: height / 2.2,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(decoration: BoxDecoration(color: Colors.pink[50]),
              margin: EdgeInsets.only(top: height*.05),
                child: Row(children: [
                  Container(
                    height: height * .1,
                    width: width / 6.5,
                    margin: EdgeInsets.only(left: 15),
                    child: Image.asset('assets/bike.png',height: 10,),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 38),
                    child: Text(
                      'Bike',
                      style: TextStyle(
                          color: ColorsConsts.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 18, top: 5),
                    child: Text(
                      '6 mins',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 78),
                    child: Text(
                      "Rs.68",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20, top: 12,
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                  icon: Image.asset(
                    'assets/coupan.jpg',
                    height: 40,
                  ),
                  labelText: 'Apply Coupon Code',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 15),
                    child: Image.asset(
                      'assets/rupes.jpg',
                      height: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Text(
                      'Choose Payment Method',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
              InkWell(
                child: Container(
                  height: height * .075,
                  width: width,
                  margin: EdgeInsets.only(top: 17, left: 20, right: 25),
                  decoration: BoxDecoration(
                    color: ColorsConsts.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Image.asset('assets/bike1.png',height: 28,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('Ride',
                                          style: TextStyle(color: ColorsConsts.whiteColor,
                                          fontWeight: FontWeight.bold,fontSize: 10),),
                                        ),
                                      ],
                                    ),),
                onTap: () {
                  Navigator.push(context,
                  
                      MaterialPageRoute(builder: (context) => UpcomingRide()));
                },
              ),
            ]),
          ),
        ),
        
      ),
    ])));
  }
}
