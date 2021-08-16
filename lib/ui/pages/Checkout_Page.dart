import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_RowDetailBooking.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                crossAxisAlignment: CrossAxisAlignment.end,
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
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 20,
          ),
          //Detail Booking
          Text(
            'Booking Details',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              CustomRowDetailBooking(
                title: 'Traveler',
                value: '2 person',
                color: kBlackColor,
                isFirst: true,
              ),
              CustomRowDetailBooking(
                title: 'Seat',
                value: 'A3, B3',
                color: kBlackColor,
              ),
              CustomRowDetailBooking(
                title: 'Insurance',
                value: 'YES',
                color: kGreenColor,
              ),
              CustomRowDetailBooking(
                title: 'Refundable',
                value: 'NO',
                color: kRedColor,
              ),
              CustomRowDetailBooking(
                title: 'VAT',
                value: '45%',
                color: kBlackColor,
              ),
              CustomRowDetailBooking(
                title: 'Price',
                value: 'IDR 8.500.690',
                color: kBlackColor,
              ),
              CustomRowDetailBooking(
                title: 'Grand Total',
                value: 'IDR 12.000.000',
                color: kPrimaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget paymentDetail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Details',
            style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 16),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image_card.png')),
                    boxShadow: [
                      BoxShadow(
                          color: kPrimaryColor.withOpacity(0.5),
                          blurRadius: 50,
                          offset: Offset(0, 10))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'))),
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                          fontWeight: medium, fontSize: 16),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buttonPayNow() {
    return CustomButtonItem(
        title: 'Pay Now',
        onPressed: () {},
        margin: EdgeInsets.only(
            right: defaultMargin, left: defaultMargin, bottom: 30));
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 30),
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          headerLocation(),
          detailBooking(),
          paymentDetail(),
          buttonPayNow(),
          tacButton()
        ],
      ),
    );
  }
}
