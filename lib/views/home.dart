import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phars_care/widget/widget.dart';
import 'search.dart';

bool switchColor = false;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: switchColor? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: switchColor?Colors.black : null,
        elevation: 0,
        title: brandName(),
        actions: [
          IconButton(
              icon: Icon(Icons.lightbulb,color: switchColor ?Colors.white : Colors.blue,),
              onPressed: () {
                setState(() {
                  switchColor = !switchColor;
                });
              })
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Phars+',),
            RichText(text: TextSpan(
              text: 'Phars',  style: TextStyle(color: Colors.blue, fontSize: 50,
                        fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: '+', 
                  style: TextStyle(color: Colors.red, fontSize: 50,
                          fontWeight: FontWeight.bold)),
              ]
              )),
            // Text('Care'),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: RichText(text: TextSpan(
                text: 'Care', 
                style: TextStyle(color: Colors.red, fontSize: 50),
                children: [
                  TextSpan(
                    text: 'GH', 
                    style: TextStyle(color: Colors.grey, fontSize: 20))
                ]
              )),
            ),
            searchArea(),
            // Icon(Icons.add),
            // Text('Care')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: 'hey',
        child: Icon(Icons.add, color: Colors.red,),
      ),
    );
  }
}
