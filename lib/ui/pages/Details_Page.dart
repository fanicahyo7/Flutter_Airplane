import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_interest_item.dart';
import 'package:bwa_airplane/ui/widgets/custom_item_photo.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundHeader() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_destination1.png'))),
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

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            backgroundHeader(),
            customShadow(),
            Column(
              children: [
                Container(
                  height: 24,
                  width: 108,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_emblem.png'))),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                    top: 256,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lake Ciliwung',
                              style: whiteTextStyle.copyWith(
                                  fontWeight: semibold, fontSize: 24),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Tangerang',
                              style: whiteTextStyle.copyWith(
                                  fontWeight: light, fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            '4.8',
                            style: whiteTextStyle.copyWith(fontWeight: medium),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: 400, left: defaultMargin, right: defaultMargin),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                              SizedBox(
                                width: 23,
                              ),
                              InterestItem(name: 'Honor Bridge')
                            ],
                          ),
                          Row(
                            children: [
                              InterestItem(name: 'City Museum'),
                              SizedBox(
                                width: 23,
                              ),
                              InterestItem(name: 'Central Mall')
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
