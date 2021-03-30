import 'package:flutter/material.dart';
Widget brandName(){
  return Align(
    alignment: Alignment.topRight,
    child: Container(
      // padding: const EdgeInsets.all(8.0),
      width: 95,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite, color: Colors.white,),
              Text(' iChare', style: TextStyle(color: Colors.white),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}