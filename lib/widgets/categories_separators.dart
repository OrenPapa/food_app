import 'package:flutter/material.dart';

Container CategoriesSeparator(String title){
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(children: [
        Text('View all' ,style: TextStyle(fontSize: 14, color: Colors.white),),
        Icon(Icons.keyboard_arrow_right,size: 14, color: Colors.white,) ,
        ],)
      ],
    ),
  );
}
