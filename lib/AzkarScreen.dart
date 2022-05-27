import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabha/ItemCard.dart';
import 'package:http/http.dart' as http;
import 'AzkarModel.dart';
import 'constract.dart';

class AzkarScreen extends StatefulWidget
{
  String azkar;

  AzkarScreen(this.azkar);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen>
{


  // int count = 5;
/*zekrString  String zekr;
  int repeat;


  _AzkarScreenState(this.zekr, this.repeat);*/

  var responsebody;
  getAzkarSabah() async
  {
    List <AzkarModel> listAzkarSabah=[];
    /*if ({widget.azkar} == 'azkar_5rog')
      {
        var url = Uri.parse("https://ahegazy.github.io/muslimKit/json/${widget.azkar}.json");

      }else{
      var url = Uri.parse("https://ahegazy.github.io/muslimKit/json/${widget.azkar}.json");

    }*/
    var url = Uri.parse("https://ahegazy.github.io/muslimKit/json/${widget.azkar}.json");

    // response -> hygeb al data mn al net
    var response = await http.get(url);


    responsebody = jsonDecode(response.body)["content"];
    // responsebody = jsonDecode(response.body)["date"]["readable"];
    for(var i in responsebody){
      listAzkarSabah.add(AzkarModel(repeat:i["repeat"],zekr:i["zekr"] ));
    }
    //print(response.statusCode);
    //print(responsebody);



    return listAzkarSabah;

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
            child: ListView.builder(itemBuilder: (BuildContext context, int index) {

              return Stack(
                children: [
                  ItemCard("${snapshot.data[index].zekr}", snapshot.data[index].repeat),
                  //ItemCard("${snapshot.data[2]["zekr"]}", snapshot.data[2]["repeat"])
                ],

              );
            },




            ),
          )
              : Center(child: CircularProgressIndicator(color: colorFontAllApp));
        },

      ),
    );
  }
}
