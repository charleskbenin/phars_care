import 'package:flutter/material.dart';

Widget searchArea(){
  return Container(
    // padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 24),
              // padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      shape: StadiumBorder(),
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            // suffixIcon: Icon(Icons.mic, color: Colors.blue,),
                            suffix: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 20,
                              child: Icon(Icons.mic, color: Colors.white,),
                            ),
                            hintText: 'Type your drug',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}