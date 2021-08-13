import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomSeatItem extends StatelessWidget {
  final String id;
  final bool isAvailable;

  const CustomSeatItem({Key? key, required this.id, this.isAvailable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      if (isAvailable) {
        return kAvailableColor;
      } else {
        return kUnavailableColor;
      }
    }

    borderColor() {
      if (isAvailable) {
        return kPrimaryColor;
      } else {
        return kUnavailableColor;
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor(), width: 2)),
    );
  }
}
