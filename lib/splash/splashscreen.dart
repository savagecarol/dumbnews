import 'dart:async';

import 'package:dumb/News/homepage.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

 class Splasher extends StatefulWidget {


  @override
   SplasherState createState() =>  SplasherState();
}

class  SplasherState extends State <Splasher>
 {

@override
void initState()
{
  super.initState();
  Timer(Duration(seconds: 4),(){
     Navigator.of(context).pop();
                  Navigator.of(context).push
                  (new MaterialPageRoute(builder:(BuildContext context)=> HomePage()));
  } );
}



  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      body: Container(
     
        color: Colors.blue[100],
        padding: const EdgeInsets.only(top:250),
          child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage:AssetImage('assets/download.jpg'),
                backgroundColor: Colors.white10,
                radius:60,
                ),
                 Padding( padding: const EdgeInsets.only(top : 180),),
                CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white)
                )
                ,
                 Padding( padding: const EdgeInsets.only(top :20),),

                Text('Dumb',
                style:GoogleFonts.patrickHand(fontSize: 40,fontStyle:FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.white )
                ),
          
            ],
          ),
        ),
      ),
      
    );
  }
}