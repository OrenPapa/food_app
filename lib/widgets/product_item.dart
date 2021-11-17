import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'dialog.dart';

class ProductItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Icon StarIcon() {
    return const Icon(
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

  // ignore: use_key_in_widget_constructors
  ProductItem(
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
    this.isFavorite,
    this.review, {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return DialogBox(id: id, title: title,);
            });
      },
      child: GridTile(
          child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(
                      Icons.favorite_border,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    StarIcon(),
                    StarIcon(),
                    StarIcon(),
                    StarIcon(),
                    StarIcon(),
                  ],
                ),
                Text(
                  review ?? '(1)',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}




