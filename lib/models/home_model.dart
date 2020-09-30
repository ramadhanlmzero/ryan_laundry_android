import 'package:flutter/foundation.dart';

class HomeModel {
  final String id;
  final String title;
  final String description;
  final String image;

  const HomeModel({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.image,
  });
}
