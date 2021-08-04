import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtonItem extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double width;
  final EdgeInsets margin;

  const CustomButtonItem(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.width = double.infinity,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          onPressed: () {
            onPressed();
          },
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
          )),
    );
  }
}
