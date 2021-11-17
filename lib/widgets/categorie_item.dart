import 'package:flutter/material.dart';

Container CategorieItem(String title, String imageUrl){
  return Container(
    child: Wrap(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title, style: TextStyle(color: Colors.white),),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(right: 15,),
              height: 150,
              width: 150,
              child: Image.network( imageUrl,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Container ScrollableCategorieItems() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 15,),
    height: 150,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CategorieItem(
            'Tutorials',
            "https://simply-delicious-food.com/wp-content/uploads/2018/07/mayo-grilled-steak.jpg"
        ),
        CategorieItem(
            'Products',
            "https://media.wired.com/photos/60b03c5cc4c56a005b69686a/master/pass/Gear-Gas-Grilling-is-Better-910142256.jpg"
        ),
        CategorieItem(
            'News',
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-online-cooking-classes-1588014476.jpg"
        ),
      ],
    ),
  );
}