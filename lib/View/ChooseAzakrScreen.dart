import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AzkarScreen.dart';
import '../constract.dart';

class ChooseAzkarScreen extends StatefulWidget {
  const ChooseAzkarScreen({Key? key}) : super(key: key);

  @override
  State<ChooseAzkarScreen> createState() => _ChooseAzkarScreenState();
}

class _ChooseAzkarScreenState extends State<ChooseAzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScaffold,
      body: Container(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (BuildContext context) {
                        return AzkarScreen("azkar_sabah");
                      }));
                },
                child: Ink.image(
                  image: AssetImage("assests/images/pattern-chooseazkar8.png"),
                  child: Card(
                    color: colorScaffold,
                    //elevation: 6,
                    margin: EdgeInsets.all(34.0),
                    //shadowColor:Color(0xfff6f7fb) ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    child: Center(
                      child: Text("أذكار الصباح",
                          style: TextStyle(
                              color: colorFontAllApp,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (BuildContext context) {
                        return AzkarScreen("azkar_massa");
                      }));
                },
                child: Container(
                  //height: 150,width: 150,
                  child: Ink.image(
                    image:
                    AssetImage("assests/images/pattern-chooseazkar8.png"),
                    child: Card(
                      color: colorScaffold,
                      //elevation: 6,
                      margin: EdgeInsets.all(34.0),
                      //shadowColor:Color(0xfff6f7fb) ,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(50.0))),
                      child: Center(
                        child: Text("أذكار المساء",
                            style: TextStyle(
                                color: colorFontAllApp,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (BuildContext context) {
                    return AzkarScreen("PostPrayer_azkar");
                  }));
                },
                child: Ink.image(
                  image: AssetImage("assests/images/pattern-chooseazkar8.png"),
                  child: const Card(
                    color: colorScaffold,
                    //elevation: 6,
                    margin: EdgeInsets.all(34.5),
                    //shadowColor:Color(0xfff6f7fb) ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    child: Center(
                      child: Text("أذكار بعد الصلاة",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: colorFontAllApp,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
