import 'package:flutter/material.dart';

import 'constract.dart';

class ItemCard extends StatefulWidget {
  String ItemText;
  var Count;

  //String TypeOfZakr;

  //ItemCard.TypeZekar(this.TypeOfZakr);

  ItemCard(this.ItemText, this.Count);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.transparent,
          constraints: const BoxConstraints(
            maxWidth: 200,
          ),
          child: Ink.image(
            image: AssetImage("assests/images/pattern-azkar5.jpg"),
            fit: BoxFit.fill,
            child: Container(

              child: Card(
                  color: colorScaffold,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                  margin: EdgeInsets.only(top: 58.0,bottom: 28.0,right: 20.0,left: 20.0),
                  elevation: 6,
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          child: Text("${widget.ItemText}ِ",
                              style: TextStyle(
                                  color: colorFontAllApp,
                                  fontSize: fontCard,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ),
                        FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                            onPressed: () {
                              setState(() {
                                if (widget.Count >= 1) {
                                  widget.Count--;
                                }
                              });
                            },
                            child: Text(
                              "${widget.Count}",
                              style: TextStyle(color: colorFontAllApp,fontSize: 18),
                            ),
                            color:
                            (widget.Count == 0) ? colorAccpet : colorReject,
                            height: 54,
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                            minWidth: double.infinity)
                      ],
                    ),
                  ),
                ),

            ),
          ),
        ),
      ),
    );
  }
}
