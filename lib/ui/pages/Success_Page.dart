
import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_success.png'))),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Well Booked 😍',
            style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          CustomButtonItem(
            title: 'My Bookings',
            onPressed: () {
              context.read<PageCubit>().setPage(1);
              Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
            },
            margin: EdgeInsets.only(bottom: 50),
            width: MediaQuery.of(context).size.width / 2,
          )
        ],
      ),
    );
  }
}
