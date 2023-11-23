import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarSlider extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String imageUrl5;
  final String? imageUrl6;

  const CarSlider({
    super.key,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.imageUrl5,
    this.imageUrl6,
  });

  @override
  Widget build(BuildContext context) {
    double borderRadius = MediaQuery.of(context).size.width * 0.04;

    List<Widget> items = [
      ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(imageUrl1),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(imageUrl2),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(imageUrl3),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(imageUrl4),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(imageUrl5),
      ),
    ];

    if (imageUrl6 != null) {
      items.add(
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(imageUrl6!),
        ),
      );
    }

    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        aspectRatio: 2.1,
        viewportFraction: 1.0,
        autoPlay: true,
      ),
    );
  }
}
