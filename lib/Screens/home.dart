import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qlrider/Screens/consts/const.dart';
import 'package:qlrider/Screens/home1.dart';

import '../drawer.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
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
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,

      drawer: Profile1(),
      
        body: Stack(
          
          children: [
              SizedBox(height: height,width: width,
              
              child: Image.asset('assets/loc.png',fit: BoxFit.cover,),),
          
            Container(alignment: Alignment.topLeft,height: 40,width: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey),color: ColorsConsts.whiteColor,
            
            ),
            margin: EdgeInsets.only(left: 20,top: 20),
              child: Align(
                  child: Builder(
                    builder: (context) {
                      return IconButton(icon: const Icon(Icons.menu,),
                iconSize: 20,color: ColorsConsts.blackColor,
                onPressed: (){
                            Scaffold.of(context).openDrawer();
                        }
                      );
                    }
                  ) ,
              ),
            ),
           Align(alignment: Alignment.bottomCenter,
             child: Container( alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: ColorsConsts.whiteColor,
                    ),
                    height: height / 3.12,
                    width: double.infinity,
                    child:  SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                       padding: const EdgeInsets.only(left: 25.0, right: 25.0,top: 28 ),
                       child: SizedBox(height: height*.07,
                                  child: TextFormField(
                                    
                                   decoration: InputDecoration(
                                       prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.circle,color: Colors.lightGreen,size: 15,)),
                                    
                                     hintText: "Current Location",
                                     hintStyle: TextStyle(color: ColorsConsts.blackColor),
                                     focusedBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30.0),
                                     ),
                                     enabledBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30.0),
                                      ),
                                   ),
                      ),
                       ),
                          ),
                                    Padding(
                       padding: const EdgeInsets.only(left: 25.0, right: 25.0,top: 18 ),
                       child: SizedBox(height: height*.07,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.circle,color: ColorsConsts.primaryColor,size: 15,)),
                                      hintText: "Destination Address",
                                      hintStyle: TextStyle(color: ColorsConsts.blackColor),
                                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                                       ),
                                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                       ),
                                       ),
                                       InkWell(
                       child: Container(
                                  height:height*.095,width: width,margin: EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(color: ColorsConsts.primaryColor,
                                 // borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Image.asset('assets/bike1.png',height: 35,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text('Ride',style: TextStyle(color: ColorsConsts.whiteColor,fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  ),
                                  onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                         },
                                       ),
                        ],
                      ),
                    ),
               
                    
             ),
           ) ,
          ],
        ),
    
      ),
    );
 }
}