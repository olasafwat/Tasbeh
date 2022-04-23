import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AdanTimesScreen extends StatefulWidget {
  const AdanTimesScreen({Key? key}) : super(key: key);

  @override
  State<AdanTimesScreen> createState() => _AdanTimesScreenState();
}

class _AdanTimesScreenState extends State<AdanTimesScreen> {

  void getTimes() async
  {
    var url = Uri.parse(" https://github.com/M-Hafez22/islamic-prayer-times.git");

    // response -> hygeb al data mn al net
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    print (responsebody);

  }

  @override
  void initState() {
    getTimes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("22/4/2022"),
            
          ],
        )


    );
  }
}
