import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../Controller/Api.dart';
import '../constract.dart';


class AdanTimesScreen extends StatefulWidget {
  @override
  State<AdanTimesScreen> createState() => _AdanTimesScreenState();
}

class _AdanTimesScreenState extends State<AdanTimesScreen> {


  @override
  void initState() {
    Api.getTimes();
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
        future: Api.getTimes(),
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
                              child: Text("??????????",
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
                              child: Text("??????????",
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
                              child: Text("????????????",
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
                              child: Text("????????????",
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
                                  "??????????",
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
                                  "????????????",
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
                                  "??????????",
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
                                  "??????????",
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
                                  "????????????",
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
                                  "????????????",
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
                          child: Text("??????????",
                              style: TextStyle(
                                  fontSize: fontAdanTime,
                                  color: colorFontAllApp)),
                        ),
                        Container(
                            alignment: Alignment.center,
                          child: Text("   ????????????",
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
                            text: '??????????',
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
                            text: '       ????????????',
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
                            text: ' ?????????? ',
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
                            text: '??????????',
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
                            text: '????????????',
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
                            text: '????????????',
                            style: GoogleFonts.amiri(
                                textStyle:TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                          ),
                        ],
                      ),
                    ),*/

                      /*             Text(
                      "${snapshot.data["data"]["timings"]["Fajr"]}",
                      style: TextStyle(fontSize: fontAdanTime, color: colorFontAllApp)),
                  Text("??????????",
                      style: TextStyle(
                          fontSize: fontAdanTime,
                          color: colorFontAllApp)),
                  Text("${snapshot.data["data"]["timings"]["Sunrise"]}",
                      style: TextStyle(
                          fontSize: fontAdanTime,
                          color: colorFontAllApp)),
                  Text("????????????",
                      style: TextStyle(
                          fontSize: fontAdanTime,
                          color: colorFontAllApp)),*/

/*                  RichText(
                    text: TextSpan(
                      text: '${snapshot.data["data"]["timings"]["Fajr"]} ',
                      style: TextStyle(fontSize: fontAdanTime, color: colorFontAllApp),
                      children: [
                        TextSpan(
                          text: '    ?????????? ',
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
