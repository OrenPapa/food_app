import 'package:flutter/material.dart';

class HorizontalScrollItem extends StatelessWidget {
  Icon StarIcon() {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 16,
    );
  }

  final String? id;
  final String? title;
  final String? imageUrl;
  final String? duration;
  bool? isFavorite;
  final String? review;

  HorizontalScrollItem(
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
    this.isFavorite,
    this.review,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 220,
      margin: EdgeInsets.all(15),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        Stack(
          children: <Widget>[
            Image.network(
              imageUrl!,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 5,
                right: 5,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                )),
          ],
        ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.access_time,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  duration!,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: Text(
                title!,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:<Widget> [
                    StarIcon(),
                    StarIcon(),
                    StarIcon(),
                    StarIcon(),
                    StarIcon(),
                  ],
                ),
                Text( review?? '(1)' , style: TextStyle( color: Colors.grey), )
              ],
            ),
      ],),
    );
  }
}
