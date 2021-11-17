import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/widgets/product_item.dart';

class ViewAllProducts extends StatelessWidget {
  static const routeName = '/view-all-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GRILLPARTY',
          textAlign: TextAlign.center,
        ),
      ),
      body: GridView.builder(
        itemCount: allDummyProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          allDummyProducts[i].id,
          allDummyProducts[i].title,
          allDummyProducts[i].imageUrl,
          allDummyProducts[i].duration,
          allDummyProducts[i].isFavorite,
          allDummyProducts[i].review,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

          childAspectRatio: 2/2.5
        ),
      ),
    );
  }
}
