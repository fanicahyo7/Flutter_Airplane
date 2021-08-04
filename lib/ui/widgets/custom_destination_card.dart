import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomDestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const CustomDestinationCard(
      {Key? key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 323,
      width: 200,
      margin: EdgeInsets.only(left: defaultMargin),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220,
            width: 180,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    image: AssetImage(imageUrl))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(18))),
                child: Row(
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
                    Text(
                      rating.toString(),
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(fontWeight: light),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
