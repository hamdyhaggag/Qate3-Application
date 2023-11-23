import 'package:flutter/material.dart';

class ItemModel extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ItemModel({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width, // Use full width
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
              ),
              textAlign: TextAlign.center, // Center text
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Cairo',
              ),
              textAlign: TextAlign.center, // Center text
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
