import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomRowDetailBooking extends StatelessWidget {
  final String title;
  final String value;
  final bool isFirst;
  final Color color;

  const CustomRowDetailBooking(
      {Key? key,
      required this.title,
      required this.value,
      this.isFirst = false,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: isFirst ? 0 : 16),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_check.png'))),
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
            child: Text(
              title,
              style: blackTextStyle,
            ),
          ),
          Text(
            value,
            style: blackTextStyle.copyWith(fontWeight: semibold, color: color),
          )
        ],
      ),
    );
  }
}
