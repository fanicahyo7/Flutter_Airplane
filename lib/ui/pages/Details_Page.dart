import 'package:bwa_airplane/models/destination_model.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/pages/Choose_Seat_Page.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
import 'package:bwa_airplane/ui/widgets/custom_interest_item.dart';
import 'package:bwa_airplane/ui/widgets/custom_item_photo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;
  const DetailPage({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundHeader() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(destination.imageUrl))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            Container(
              height: 24,
              width: 108,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),
            //title
            Container(
                margin: EdgeInsets.only(top: 256),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destination.name,
                            style: whiteTextStyle.copyWith(
                                fontWeight: semibold, fontSize: 24),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            destination.city,
                            style: whiteTextStyle.copyWith(
                                fontWeight: light, fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 20,
                          margin: EdgeInsets.only(right: 2),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/icon_star.png'))),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          destination.rating.toString(),
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        )
                      ],
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 31),
              width: double.infinity,
              // height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: kWhiteColor),
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                          fontWeight: semibold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CustomItemPhoto(
                          imageUrl: 'assets/image_photo1.png',
                        ),
                        CustomItemPhoto(
                          imageUrl: 'assets/image_photo2.png',
                        ),
                        CustomItemPhoto(
                          imageUrl: 'assets/image_photo3.png',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Interests',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InterestItem(name: 'Kids Park'),
                        InterestItem(name: 'Honor Bridge')
                      ],
                    ),
                    Row(
                      children: [
                        InterestItem(name: 'City Museum'),
                        InterestItem(name: 'Central Mall')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: 31, right: defaultMargin, left: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        NumberFormat.currency(
                          locale: 'ID',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(destination.price),
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                  CustomButtonItem(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSeatPage()));
                    },
                    margin: EdgeInsets.only(top: 5),
                    width: 170,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [backgroundHeader(), customShadow(), content()],
          ),
        ),
      ),
    );
  }
}
