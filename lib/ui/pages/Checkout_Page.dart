import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_new_destination_card.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  Widget headerLocation() {
    return Container(
      margin: EdgeInsets.only(
          top: 50, left: defaultMargin, right: defaultMargin, bottom: 30),
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_checkout.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ciliwung',
                    style: greyTextStyle,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget detailBooking() {
    //booking name
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_destination1.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 18),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
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
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ),
            ],
          ),
          //Detail Booking
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [headerLocation(), detailBooking()],
      ),
    );
  }
}
