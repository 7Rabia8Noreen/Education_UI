import 'package:flutter_svg/svg.dart';

class Category {
  final String title;
  final SvgPicture icon;
  final int classes;

  Category({required this.title, required this.icon, required this.classes});
}

final categoryList = [
  Category(
      title: 'Dancing',
      icon: SvgPicture.asset('assets/svg/dancing.svg'),
      classes: 10),
  Category(
      title: 'Music',
      icon: SvgPicture.asset('assets/svg/music.svg'),
      classes: 10),
  Category(
      title: 'Music',
      icon: SvgPicture.asset('assets/svg/category.svg'),
      classes: 10),
];
