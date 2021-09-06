import 'package:flutter/material.dart';

class CategoryItem {
  bool isExpanded;
  final String? header;
  final String? body;
  final Image? image;

  CategoryItem({this.body, this.header, this.isExpanded=false, this.image});
}

class SubCategoryItem {
  bool isExpanded;
  final String? title;
  final String? image;

  SubCategoryItem({this.image, this.isExpanded=false, this.title});
}

class GridViewTileInfo {
  final String? name;
  final double? weightInKg, weightInG;
  final double? pricePerPiece;
  final double? price;
  final String? image;

  GridViewTileInfo({this.name, this.price, this.weightInKg=0, this.weightInG=0, this.pricePerPiece, this.image});
}