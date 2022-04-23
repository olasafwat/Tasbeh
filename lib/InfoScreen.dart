import 'package:flutter/material.dart';
import 'package:sabha/HomeNavigationScreen.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: ()
                {
                  Navigator.pop(context);
                  },
                    icon: Icon(
                        Icons.clear,
                        //color: Color(0xff607d8b),
                        size: 30)),
                Text("المساعدة",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),



              ],
            ),
          ),
          Text("هذا التطبيق يستخدم لفعل الخير",style: TextStyle(fontSize: 20)),

        ],

    ),
      );

  }
}
