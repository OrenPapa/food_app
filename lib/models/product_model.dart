import 'package:flutter/material.dart';

class ProductModel {
  final String? id;
  final String? title;
  final String? imageUrl;
  final String? duration;
  bool? isFavorite;
  final String? review;


  ProductModel(
    { @required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      this.isFavorite,
      @required  this.review
      });
}

List<ProductModel> allDummyProducts = [
  ProductModel(
      id: 'id1',
      title: 'Pulled Pork',
      imageUrl:
          'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/dc91cbc3-ebd0-47cf-b9d3-a56c3da9d12a/Derivates/4c114882-8f59-4fe1-b1ef-873259088a18.jpg',
      duration: '00:40',
      isFavorite: true,
      review: '(1)'
  ),
  ProductModel(
      id: 'id2',
      title: 'Bacon Wraped',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod/images/delish-bacon-wrapped-cabbage-still004-1536594262.jpg',
      duration: '00:25',
      isFavorite: true,
      review: '(1)'
      ),
  ProductModel(
      id: 'id3',
      title: 'Brisket',
      imageUrl:
          'https://www.seriouseats.com/thmb/yVGwy06xpsIjMDogSsT12rUzufY=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2016__07__20160801-sous-vide-brisket-guide-35-460f78a538054fc69bd97f2e16b4bd74.jpg',
      duration: '00:45',
      isFavorite: true,
      review: '(1)'
      ),
  ProductModel(
      id: 'id4',
      title: 'Grilled Chicken',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod/images/grilled-chicken-horizontal-1532030541.jpg',
      duration: '00:55',
      isFavorite: false,
      review: '(1)'
      ),
  ProductModel(
      id: 'id5',
      title: 'Grilled Steak',
      imageUrl:
          'https://www.thedailymeal.com/sites/default/files/2015/09/08/mainshutterstock_grilledste.jpg',
      duration: '01:10',
      isFavorite: false,
      review: '(1)'
      ),
  ProductModel(
      id: 'id6',
      title: 'Grilled Fish',
      imageUrl: 'https://i.ytimg.com/vi/1LtXG6CQmZc/maxresdefault.jpg',
      duration: '01:40',
      isFavorite: false,
      review: '(1)'
  ),
];
