import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabha/AzkarScreen.dart';

class ChooseAzkarScreen extends StatefulWidget {
  const ChooseAzkarScreen({Key? key}) : super(key: key);

  @override
  State<ChooseAzkarScreen> createState() => _ChooseAzkarScreenState();
}

class _ChooseAzkarScreenState extends State<ChooseAzkarScreen>
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7fb),
      body: Container(

        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: GridView.count(

              crossAxisCount: 2,
              children: [
               // GestureDetector(
                //  onTap: (){
                //    Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) {
                 //     return AzkarScreen(); } ));
                //  },
                   GestureDetector(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) {
                        return AzkarScreen(); } ));
                    },
                    child: Ink.image(
                      image: AssetImage("assests/images/pattern-chooseazkar3.png"),
                      child: Card(
                        color: Color(0xfff6f7fb),
                        //elevation: 6,
                        margin: EdgeInsets.all(41.0),//shadowColor:Color(0xfff6f7fb) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50.0))),
                        child: Center(
                          child: Text(
                                "أذكار الصباح",
                                style: TextStyle(
                                    color: Color(0xff607d8b),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                        ),
                        ),
                    ),
                  ),
                   GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) {
                      return AzkarScreen(); } ));
                  },
                  child: Container(
                    //height: 150,width: 150,
                    child: Ink.image(

                      image: AssetImage("assests/images/pattern-chooseazkar3.png"),

                      child: Card(

                        color: Color(0xfff6f7fb),
                        //elevation: 6,
                        margin: EdgeInsets.all(41.0),//shadowColor:Color(0xfff6f7fb) ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50.0))),
                        child: Center(
                          child: Text(
                              "أذكار المساء",
                              style: TextStyle(
                                  color: Color(0xff607d8b),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
                   GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) {
                      return AzkarScreen(); } ));
                  },
                  child: Ink.image(
                    image: AssetImage("assests/images/pattern-chooseazkar3.png"),
                    child: const Card(
                      color: Color(0xfff6f7fb),
                      //elevation: 6,
                      margin: EdgeInsets.all(41.0),//shadowColor:Color(0xfff6f7fb) ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                               Radius.circular(50.0))),
                      child: Center(
                        child: Text(
                            "أذكار دخول إلي المنزل",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff607d8b),
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                   GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) {
                      return AzkarScreen(); } ));
                  },
                  child: Ink.image(
                    image: AssetImage("assests/images/pattern-chooseazkar3.png"),
                    child: const Card(
                      color: Color(0xfff6f7fb),
                      //elevation: 6,
                      margin: EdgeInsets.all(41.0),//shadowColor:Color(0xfff6f7fb) ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                               Radius.circular(50.0))),
                      child: Center(
                        child: Text(
                            "أذكار الخروج من المنزل",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff607d8b),
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
             //   ),


                ] ,
          ),
        ),
      ),
    );
  }
}
