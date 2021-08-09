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
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 446,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: kWhiteColor),
                  child: Container(
                    
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
