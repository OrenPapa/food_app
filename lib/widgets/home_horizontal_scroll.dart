import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';

import 'horizontal_scroll_item.dart';

class HomeHorizontalScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (ctx, i) => HorizontalScrollItem(
            allDummyProducts[i].id,
            allDummyProducts[i].title,
            allDummyProducts[i].imageUrl,
            allDummyProducts[i].duration,
            allDummyProducts[i].isFavorite,
            allDummyProducts[i].review,
          ) ,
        ),

); }
}


