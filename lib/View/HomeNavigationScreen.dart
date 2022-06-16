import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:google_fonts/google_fonts.dart';


import 'AdanTimesScreen.dart';
import 'ChooseAzakrScreen.dart';
import 'HomeScreen.dart';
import 'InfoScreen.dart';
import '../constract.dart';

class HomeNavigationScreen extends StatefulWidget {
  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen>
    with SingleTickerProviderStateMixin {
  final TabList = ["السبحة", "أذكار المسلم"];
  final intialTab = [HomeScreen()];
  var tablistt;

  late TabController _tabController;

  @override
  void initState() {
    //vsync (lw 7sal t8yer fl fo2 y8er fl t7t)
    _tabController = TabController(length: TabList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScaffold,
      appBar: AppBar(
        backgroundColor: colorAppBar,
        title: const Text(
          "وَذَكِّر",
          style: TextStyle(
              color: colorFontAllApp,
              fontSize: fontTitle,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // leading -> bt5ly icon left
        leading: IconButton(
          icon: Image.asset("assests/images/adan-icon8.png"),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return AdanTimesScreen();
              },
            );
          },
        ),

        // actions -> bt5ly icon right
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return InfoScreen();
                },
              );
            },
            icon: Icon(Icons.info_outline,
                color: colorFontAllApp, size: fontIcon),
          )
        ],

        bottom: TabBar(
          labelColor: colorFontAllApp,
          labelStyle:GoogleFonts.amiri(textStyle: TextStyle(fontSize: fontLable)),
          controller: _tabController,
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: colorFontAllApp,
            insets: EdgeInsets.only(bottom: 6),
          ),
          tabs: TabList.map((item) {
            colorAppBar;
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [HomeScreen(), ChooseAzkarScreen()]),
    );
  }
}
