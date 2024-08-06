import 'package:flutter/material.dart';

class PageViewItemModel {
  final Widget titleWidget;
  final String description;
  final String backgroundImage;
  final String image;
  final bool isVisible;

  PageViewItemModel({
    required this.titleWidget,
    required this.description,
    required this.backgroundImage,
    required this.image,
    required this.isVisible,
  });
}
