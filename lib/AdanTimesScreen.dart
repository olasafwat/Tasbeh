import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'constract.dart';

class AdanTimesScreen extends StatefulWidget {
  @override
  State<AdanTimesScreen> createState() => _AdanTimesScreenState();
}

class _AdanTimesScreenState extends State<AdanTimesScreen> {
  var responsebody;

  getTimes() async {
    var url = Uri.parse(
        "https://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt&method=5");

    // response -> hygeb al data mn al net
    var response = await http.get(url);

    setState(() {
      responsebody = jsonDecode(response.body);
      // responsebody = jsonDecode(response.body)["date"]["readable"];
    });
    //print(response.statusCode);
    //print(responsebody);

    return responsebody;
  }

  @override
  void initState() {
    getTimes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assests/images/adanbackground2.jpg"),
        fit: BoxFit.cover,
      )),
      child: FutureBuilder(
        future: getTimes(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return (snapshot.hasData)
              ? Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15.0,
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.clear,
                                      color: colorFontAllApp, size: 30),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 80.0, top: 50),
                              child: Text(
                                "${snapshot.data["data"]["date"]["readable"]}",
                                style: GoogleFonts.amiri(
                                  textStyle: TextStyle(
                                      color: colorFontAllApp,
                                      fontSize: fontTitle,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
/*                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, right: 60),
                              child: Text(
                                  "${snapshot.data["data"]["timings"]["Dhuhr"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text("الضهر",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, right: 60),
                              child: Text(
                                  "${snapshot.data["data"]["timings"]["Asr"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text("العصر",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, right: 60),
                              child: Text(
                                  "${snapshot.data["data"]["timings"]["Maghrib"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text("المغرب",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, right: 60),
                              child: Text(
                                  "${snapshot.data["data"]["timings"]["Isha"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),
                          Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text("العشاء",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp))),*/
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${snapshot.data["data"]["timings"]["Fajr"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),
                              Text(
                                  "الفجر",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${snapshot.data["data"]["timings"]["Sunrise"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),
                              Text(
                                  "الشروق",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${snapshot.data["data"]["timings"]["Dhuhr"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),
                              Text(
                                  "الضهر",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${snapshot.data["data"]["timings"]["Asr"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),
                              Text(
                                  "العصر",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${snapshot.data["data"]["timings"]["Maghrib"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),
                              Text(
                                  "المغرب",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),


                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "${snapshot.data["data"]["timings"]["Isha"]}",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),
                              Text(
                                  "العشاء",
                                  style: TextStyle(
                                      fontSize: fontAdanTime,
                                      color: colorFontAllApp)),


                            ],
                          ),
                        ],
                      ),
                      /* Center(
                    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                    alignment: Alignment.center,
                          child: Text("الفجر",
                              style: TextStyle(
                                  fontSize: fontAdanTime,
                                  color: colorFontAllApp)),
                        ),
                        Container(
                            alignment: Alignment.center,
                          child: Text("   الشروق",
                              style: TextStyle(
                                  fontSize: fontAdanTime,
                                  color: colorFontAllApp)),
                        )
                      ],
                    ),
                  ),*/
/*
                    RichText(
                      text: TextSpan(
                        text: '${snapshot.data["data"]["timings"]["Fajr"]}',
                        style: GoogleFonts.amiri(
                            textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp,wordSpacing: 100)),

                        children: [
                          WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              child: SizedBox(width: 57)),
                          TextSpan(
                            text: 'الفجر',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '${snapshot.data["data"]["timings"]["Sunrise"]}',
                        style: GoogleFonts.amiri(
                            textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                        children: [
                          WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              child: SizedBox(width: 2)),
                          TextSpan(
                            text: '       الشروق',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '${snapshot.data["data"]["timings"]["Dhuhr"]}',
                        style: GoogleFonts.amiri(
                            textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                        children: [
                          WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              child: SizedBox(width: 45)),
                          TextSpan(
                            text: ' الضهر ',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '  ${snapshot.data["data"]["timings"]["Asr"]} ',
                        style: GoogleFonts.amiri(
                            textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                        children: [
                          WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              child: SizedBox(width: 40)),
                          TextSpan(
                            text: 'العصر',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '${snapshot.data["data"]["timings"]["Maghrib"]}',
                        style: GoogleFonts.amiri(
                            textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                        children: [
                          WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              child: SizedBox(width: 40)),
                          TextSpan(
                            text: 'المغرب',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '${snapshot.data["data"]["timings"]["Isha"]}',
                        style: GoogleFonts.amiri(
                            textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                        children: [
                          WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              child: SizedBox(width: 50)),
                          TextSpan(
                            text: 'العشاء',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),*/

                      /*             Text(
                      "${snapshot.data["data"]["timings"]["Fajr"]}",
                      style: TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                  Text("الفجر",
                      style: TextStyle(
                          fontSize: fontAdanTime,
                          color: colorFontAllApp)),
                  Text("${snapshot.data["data"]["timings"]["Sunrise"]}",
                      style: TextStyle(
                          fontSize: fontAdanTime,
                          color: colorFontAllApp)),
                  Text("الشروق",
                      style: TextStyle(
                          fontSize: fontAdanTime,
                          color: colorFontAllApp)),*/

/*                  RichText(
                    text: TextSpan(
                      text: '${snapshot.data["data"]["timings"]["Fajr"]} ',
                      style: TextStyle(fontSize: fontAdanTime, color: colorFontAllApp),
                      children: [
                        TextSpan(
                          text: '    الفجر ',
                          style: TextStyle(fontSize: fontAdanTime, color: colorFontAllApp),
                          ),



                      ],
                    ),
                  ),
*/
                    ])
              : Center(
                  child: CircularProgressIndicator(
                  color: colorFontAllApp,
                ));
        },
      ),
    ));
  }
}
