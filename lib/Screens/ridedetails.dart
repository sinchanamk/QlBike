

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'consts/const.dart';
class RideDetails extends StatefulWidget {
  const RideDetails({ Key? key }) : super(key: key);

  @override
  _RideDetailsState createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
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
    return
    Scaffold(appBar: PreferredSize(preferredSize: Size.fromHeight(height/11),
      child: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
            height: height / 7.1,
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
                        size: 28,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 18),
                  child: Text(
                    'Ride Details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsConsts.whiteColor,
                        fontSize: 20),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top:height*.04, left:height*.099,),
                  child: Icon(
                    Icons.help_outline_outlined,
                    color: ColorsConsts.whiteColor,
                    size: 27,
                  ),
                ),
               Padding(
                  padding: EdgeInsets.only(top:height*.04, left:height*.01,right: height*.01),
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
            ),),
    ),
    body:SingleChildScrollView(
      child: Column(children: [
     SizedBox(
          height: height*.2,
          width: width,
          child: Image.asset(
            'assets/loc.png',
            fit: BoxFit.cover,
          ),
        ),
       Row(children: [
          Padding(
                padding: const EdgeInsets.only(left:12,top: 10,bottom: 2),
                child: Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    maxRadius: 23,
                    backgroundColor: ColorsConsts.primaryColor,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/user.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:14.0),
                child: Text('You Rated',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
               Padding(
                  padding: const EdgeInsets.only(left:40,),
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                  print(rating);
                    },
                  ),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: Divider(color: ColorsConsts.blackColor,),
              ),
              Row(children: [
              Padding(
                padding: const EdgeInsets.only(left:6),
                child: Image.asset('assets/bike.png',height: 50,),
              ),
              Padding(
                padding: const EdgeInsets.only(left:28),
                child: Text('Bike',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              
              ],),
               Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: Divider(color: ColorsConsts.blackColor,),
              ),
              Row(children: [
              Padding(
                padding: const EdgeInsets.only(left:6),
                child: Image.asset('assets/coupan.jpg',height: 45,),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Text('Rs. 62',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              
              ],),
              Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: Divider(color: ColorsConsts.blackColor,),
              ),
             Row(children: [
             Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left:38,),
                          child: Text('6.30 PM'),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(left:38,top: 37),
                            child: Text('6.40 PM'),
                        ),
                        
             ],),
             Padding(
               padding: const EdgeInsets.only(left:28,),
               child: Column(children: [
               Icon(Icons.circle,size: 10,color: ColorsConsts.primaryColor,),
               Container(width: 1,height:52,color: ColorsConsts.blackColor,),
                Icon(Icons.circle,size: 10,color: Colors.lightGreen,),
            
               ],),
             ),
             Column(children: [
             Padding(
                padding: const EdgeInsets.only(left:0,),
              child: Text('Hebbal'),
             ),
             Padding(
               padding: const EdgeInsets.only(left:38,top: 37),
               child: Text('Doddaballapur'),
             )
             ],),
            
             ],),
             Divider(color: ColorsConsts.blackColor,),
             Padding(
               padding: const EdgeInsets.only(left:30,top: 5),
               child: Container(alignment: Alignment.topLeft,
               child: Text('Bill Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),),
             ),
             Column(children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
             Padding(
               padding: const EdgeInsets.only(right:140,top: 10),
               child: Text('Ride Fare',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor),),
             ),
             Text('Rs. 54',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor))
             ],),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
             Padding(
               padding: const EdgeInsets.only(right:90,top: 10),
               child: Text('Total Access Fee',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor),),
             ),
             Text('Rs. 22',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor))
             ],),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
               Padding(
               padding: const EdgeInsets.only(right:95,top: 10),
               child: Text('Coupon Savings',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor),),
             ),
             Text('Rs - 14',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor))
             ],),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
             Padding(
               padding: const EdgeInsets.only(right:175,top: 10),
               child: Text('Tax',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor),),
             ),
             Text('Rs. 0.9',style: TextStyle(fontSize: 14,color: ColorsConsts.blackColor))
             ],)
             
             ],),
             Divider(color: ColorsConsts.blackColor,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
             Padding(
             padding: const EdgeInsets.only(right:95,top: 8),
                 child: Text('Total Payable',style: TextStyle(fontSize: 17
                 ,
                 fontWeight: FontWeight.bold,
                 color: ColorsConsts.blackColor),),
             ),
             Text('Rs. 62',style: TextStyle(fontSize: 18,color: ColorsConsts.blackColor,fontWeight: FontWeight.bold))
             ],),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
             Padding(
              padding: const EdgeInsets.only(right:120,top: 8),
                child: Text('Total Paid',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,
                color: ColorsConsts.blackColor),),
             ),
             Text('Rs. 62',style: TextStyle(fontSize: 18,color: ColorsConsts.blackColor,fontWeight: FontWeight.bold))
             ],)
            
              ],),
    ) ,
    );
  }
}