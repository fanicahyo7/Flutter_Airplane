import 'package:flutter/material.dart';

class CustomItemPhoto extends StatelessWidget {
  final String imageUrl;
  const CustomItemPhoto({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(image: AssetImage(imageUrl))),
    );
  }
}
