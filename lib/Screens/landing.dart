import 'package:flutter/material.dart';
import 'package:qlrider/Screens/consts/const.dart';
import 'package:qlrider/Screens/login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
   
  double _width = 0.0;
  double _hight = 0.0;

  @override
  void didChangeDependencies() {
    _width = MediaQuery.of(context).size.width;
    _hight = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: _hight,
              child: Stack(
                children: [
                  Container(
                    height: _hight / 1.1,
                    width: _width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/h1.jpg"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 110),
                    height: _hight / 2,
                    width: _width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/cover.jpg"))),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 10, right: 0, top: _hight / 1.5),
                    height: 60,
                    width: _width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/name.png"))),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(height: _hight*.065,width: _width*.4,alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: ColorsConsts.primaryColor),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
