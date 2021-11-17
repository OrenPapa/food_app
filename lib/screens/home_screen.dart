import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/view_all_products.dart';
import 'package:food_app/widgets/categories_separators.dart';
import 'package:food_app/widgets/home_horizontal_scroll.dart';
import 'package:food_app/widgets/new_to_platform.dart';
import '../widgets/categorie_item.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ScrollableCategorieItems(),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                child: const Text(
                  'GRILL CONNECTION',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              NewToPlatform(),
              // ignore: prefer_const_constructors
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () => null,

                child: CategoriesSeparator('FAVORITES'),
              ),
              HomeHorizontalScroll(),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(ViewAllProducts.routeName),
                child: CategoriesSeparator('GRILLPARTY'),
              ),
              HomeHorizontalScroll(),
            ],
          ),
        ),
      ),
    );
  }
}
