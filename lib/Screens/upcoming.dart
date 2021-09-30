import 'package:flutter/material.dart';
import 'package:qlrider/Screens/myrides.dart';

import 'consts/const.dart';

class UpcomingRide extends StatefulWidget {
  const UpcomingRide({Key? key}) : super(key: key);

  @override
  _UpcomingRideState createState() => _UpcomingRideState();
}

class _UpcomingRideState extends State<UpcomingRide> {
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
    return Scaffold(
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
        height: height / 8,
        width: width,
        decoration: BoxDecoration(color: ColorsConsts.primaryColor),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: ColorsConsts.whiteColor,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 18),
              child: Text(
                'Upcoming Ride',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorsConsts.whiteColor,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * .04,
                left: height * .055,
              ),
              child: Icon(
                Icons.help_outline_outlined,
                color: ColorsConsts.whiteColor,
                size: 27,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * .04, left: height * .01, right: height * .01),
              child: Text(
                'Support',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ColorsConsts.whiteColor,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(
              top: 20,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              color: ColorsConsts.whiteColor,
            ),
            height: height / 3.14,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    right: 158,
                  ),
                  child: Text(
                    'My Upcoming Ride',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: ColorsConsts.blackColor),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  //  Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => MyRides()),
                  //             );},
                  child: Container(
                    padding:
                        const EdgeInsets.only(right: 10, top: 14, left: 10),
                    child: SizedBox(
                      height: 150,
                      width: 550,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: ColorsConsts.primaryColor,
                                    size: 14,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Hebbal',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.lightGreen,
                                    size: 14,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8),
                                    child: Text(
                                      'Doddaballapur',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 170, top: 10),
                                child: Text(
                                  '31/02/2021',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 190, top: 5),
                                child: Text(
                                  '11.30 AM',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    ]));
  }
}
