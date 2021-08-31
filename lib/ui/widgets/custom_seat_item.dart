import 'package:bwa_airplane/cubit/seat_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSeatItem extends StatelessWidget {
  final String id;
  final bool isAvailable;

  const CustomSeatItem({Key? key, required this.id, this.isAvailable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (isAvailable) {
        if (isSelected) {
          return kPrimaryColor;
        }
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

    child() {
      if (isSelected) {
        return Center(
            child: Text(
          'You',
          style: whiteTextStyle.copyWith(fontWeight: semibold),
        ));
      } else {
        SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().setSeat(id);
        }
      },
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: borderColor(), width: 2)),
        child: child(),
      ),
    );
  }
}
