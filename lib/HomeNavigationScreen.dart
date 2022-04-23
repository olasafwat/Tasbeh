import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:sabha/AdanTimesScreen.dart';
import 'package:sabha/ChooseAzakrScreen.dart';
import 'package:sabha/HomeScreen.dart';
import 'package:sabha/InfoScreen.dart';

class HomeNavigationScreen extends StatefulWidget {


  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> with SingleTickerProviderStateMixin {


   final TabList =["السبحة الإلكترونية" , "حصن المسلم"];
  final intialTab =[HomeScreen()];
  var tablistt;

  late TabController _tabController;
  @override
  void initState() {

    //vsync (lw 7sal t8yer fl fo2 y8er fl t7t)
    _tabController =TabController(length: TabList.length, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xfff6f7fb),
      appBar: AppBar (
        
        backgroundColor:  Color(0xffe8e8f4),
        title: const Text(
          "وَذَكِّر",

          style: TextStyle(
              color: Color(0xff607d8b),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // leading -> bt5ly icon left
        leading: IconButton(
          icon: Image.asset("assests/images/adan-icon8.png"),
          onPressed: () {
            showModalBottomSheet(context: context, builder: (BuildContext context) {
              return AdanTimesScreen(); },);
          },


        ),

        // actions -> bt5ly icon right
        actions:
        [
          IconButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (BuildContext context) {
              return InfoScreen(); },);
          },

            icon: Icon(
                Icons.info_outline,
                color: Color(0xff607d8b),
                size: 32 ),)

        ],

        bottom: TabBar(
          labelColor: Color(0xff607d8b),labelStyle: TextStyle(fontSize: 15),
          controller: _tabController,
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: Color(0xff607d8b),
            insets: EdgeInsets.only(bottom: 6),
          ),
          tabs: TabList.map((item) {
            Color(0xffe8e8f4);
            return Tab(
              text: item,
            );
          }).toList(),
        )
        ,
      ),

        body:  TabBarView(
                 controller: _tabController,
                 children: [
                   HomeScreen(),
                   ChooseAzkarScreen()
                 ]),



         //),

            );
  }
}