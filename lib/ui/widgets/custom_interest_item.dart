import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String name;
  const InterestItem({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 16,
          width: 16,
          margin: EdgeInsets.only(right: 6),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/icon_check.png'))),
        ),
        Container(
          child: Text(
            name,
            style: blackTextStyle,
          ),
        )
      ],
    );
  }
}
