import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabha/ItemCard.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {

  int count = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff6f7fb),
      appBar: AppBar (
        backgroundColor: const Color(0xffe8e8f4),
        title: const Text(
          "وَذَكِّر",
          style: TextStyle(
              color: Color(0xff607d8b),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // leading -> bt5ly icon left
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.arrow_back_ios_new ,
              color: Color(0xff607d8b),
              size:28 )),
        // actions -> bt5ly icon right
        actions: const
        [
          Icon(
              Icons.info_outline,
              color: Color(0xff607d8b),
              size: 28 )
        ],

      ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child:  ListView(
            children: [
              ItemCard("سبحان الله",55),
              ItemCard("أستغفر الله",55),
              ItemCard("الله اكبر", 4),
              ItemCard("يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طـرفة عين.",5),
              ItemCard("بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.",5),



            ],
            ),
          ),

    );
  }
}
