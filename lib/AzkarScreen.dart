import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabha/ItemCard.dart';
import 'package:http/http.dart' as http;
import 'constract.dart';

class AzkarScreen extends StatefulWidget
{

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen>
{
  int count = 5;


  var responsebody;
  getAzkarSabah() async
  {
    var url = Uri.parse(
        "https://ahegazy.github.io/muslimKit/json/azkar_sabah.json");

    // response -> hygeb al data mn al net
    var response = await http.get(url);

    setState(()
    {
      responsebody = jsonDecode(response.body);
      // responsebody = jsonDecode(response.body)["date"]["readable"];
    });
    //print(response.statusCode);
    //print(responsebody);

    return responsebody;
  }

  @override
  void initState()
  {
    getAzkarSabah();
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: colorScaffold,
      appBar: AppBar(
        backgroundColor: colorAppBar,
        title: const Text(
          "وَذَكِّر",
          style: TextStyle(
              color: colorFontAllApp,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // leading -> bt5ly icon left
        leading: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new,
                color: colorFontAllApp, size: fontIcon)),
        // actions -> bt5ly icon right
        actions: const [
          Icon(Icons.info_outline, color: colorFontAllApp, size: fontIcon)
        ],
      ),
      body: FutureBuilder(
        future: getAzkarSabah(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return (snapshot.hasData)
              ? Container(
                  margin: EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      ItemCard("${snapshot.data["content"][1]["zekr"]}", 5),
                      ItemCard("أستغفر الله", 55),
                      ItemCard("الله اكبر", 4),
                      ItemCard(
                          "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طـرفة عين.",
                          5),
                      ItemCard(
                          "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.",
                          5),
                    ],
                  ),
                )
              : Center(child: CircularProgressIndicator(color: colorFontAllApp));
        },

      ),
    );
  }
}
