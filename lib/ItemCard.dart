import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  String ItemText;
  int Count;
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
      padding:  EdgeInsets.all(8.0),
      child: Container(
        height: 180,width: 150,
        child: Ink.image(image: AssetImage("assests/images/pattern-azkar8.png"),
          fit: BoxFit.fill,
          child: Container(
            child: SingleChildScrollView(
              child: Card(
                color: Color(0xfff6f7fb),
                margin: EdgeInsets.all(25.0),
                elevation: 6,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Text(
                            "${widget.ItemText}ِ",
                            style: TextStyle(
                                color: Color(0xff607d8b),
                                fontSize: 15.5,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ),

                      FlatButton(
                          onPressed: ()
                          {
                            setState(()
                            {
                              if(widget.Count >= 1)
                              {
                                widget.Count--;
                              }

                            });
                          },
                          child: Text("${widget.Count}",style: TextStyle(color: Color(0xff607d8b)),),
                          color: (widget.Count == 0)? Color(0xfff3d2dd): Color(0xff819cc9),
                          height: 54,
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                          minWidth: double.infinity )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),);
  }
}
