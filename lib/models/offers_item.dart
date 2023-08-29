import 'dart:math';

import 'package:flutter/widgets.dart';

class OfferItem {
  Color cardColor = [
    const Color(0xffD7E4F6),
    const Color(0xffFFF496),
    const Color(0xffFFC7D0),
  ][Random.secure().nextInt(3)];
  bool isLiked;
  String imagePath;
  String donutName;
  String donutDescription;
  double donutPrice;
  double offer;

  OfferItem(
      {required this.isLiked,
      required this.imagePath,
      required this.donutName,
      required this.donutDescription,
      required this.donutPrice,
      required this.offer});
}
