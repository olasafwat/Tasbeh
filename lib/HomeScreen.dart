import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void IncreseCount() {
    setState(() {
      count++;
    });
  }

  void DecreseCount() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7fb),
      //backgroundColor: Colors.transparent,


      body:
      /*Container(
         constraints: BoxConstraints.expand(),
        decoration:  BoxDecoration(
            image:DecorationImage(

              image: AssetImage("assests/images/background11.jpg"),
              fit: BoxFit.fill,
            ) ),
       child:*/
      Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              IncreseCount();
            },
            child: Container(
              height: 150, width: 300, //color: Colors.yellow,
              //padding: EdgeInsets.only(top: 20.0,right: 120),
              //margin: EdgeInsets.only(top: 150.0,right: 70.0),
              //margin: EdgeInsets.only(bottom: 40.0),
                child: Ink.image(
                  image: AssetImage("assests/images/home-pattern1.png"),
                  fit: BoxFit.cover,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("سبحان الله",
                          style:
                          TextStyle(fontSize: 25, color: Color(0xff607d8b))),
                    ),
                  ),
                ),
            ),
          ),
          Container(
            height: 130, width: 130, //color: Colors.green,
            // padding: EdgeInsets.only(right: 120.0),
            // margin:EdgeInsets.only( bottom: 150.0,right: 140.0) ,
            child: Ink.image(
              image: AssetImage("assests/images/home-pattern2.png"),
              fit: BoxFit.cover,
              child: Center(
                child: Text(
                  "$count",
                  style: TextStyle(fontSize: 20, color: Color(0xff607d8b)),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              DecreseCount();
            },
            child: Container(
              height: 150, width: 300, //color: Colors.red,
              //margin: EdgeInsets.only(left: 100.0,right: 100.0,top: 50.0),
              //margin: EdgeInsets.only(bottom: 5.0),
                child: Ink.image(
                  image: AssetImage("assests/images/home-pattern1.png"),
                  fit: BoxFit.cover,
                  child: Center(
                      child: Image.asset('assests/images/reset-icon.png',
                          width: 25, height: 25)),
                ),
            ),
          ),
        ]),
      ),

      // ),
    );
  }
}
