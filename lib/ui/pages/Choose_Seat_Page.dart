import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/pages/Checkout_Page.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
import 'package:bwa_airplane/ui/widgets/custom_seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text('Available', style: blackTextStyle),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text('Selected', style: blackTextStyle),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget seatSelect() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 48,
                    height: 24,
                    child: Center(
                        child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ))),
                Container(
                    width: 48,
                    height: 24,
                    child: Center(
                        child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ))),
                Container(
                    width: 48,
                    height: 24,
                    child: Center(
                        child: Text(
                      ' ',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ))),
                Container(
                    width: 48,
                    height: 24,
                    child: Center(
                        child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ))),
                Container(
                    width: 48,
                    height: 24,
                    child: Center(
                        child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ))),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    id: 'A1',
                    isAvailable: true,
                  ),
                  CustomSeatItem(
                    id: 'B1',
                    isAvailable: false,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '1',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ))),
                  CustomSeatItem(
                    id: 'C1',
                    isAvailable: false,
                  ),
                  CustomSeatItem(
                    id: 'D1',
                    isAvailable: true,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    id: 'A2',
                    isAvailable: true,
                  ),
                  CustomSeatItem(
                    id: 'B2',
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '2',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ))),
                  CustomSeatItem(
                    id: 'C2',
                    isAvailable: false,
                  ),
                  CustomSeatItem(
                    id: 'D2',
                    isAvailable: true,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    id: 'A3',
                    isAvailable: false,
                  ),
                  CustomSeatItem(
                    id: 'B3',
                    isAvailable: false,
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '3',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ))),
                  CustomSeatItem(
                    id: 'C3',
                    isAvailable: false,
                  ),
                  CustomSeatItem(
                    id: 'D3',
                    isAvailable: false,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    id: 'A4',
                  ),
                  CustomSeatItem(
                    id: 'B4',
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '4',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ))),
                  CustomSeatItem(
                    id: 'C4',
                  ),
                  CustomSeatItem(
                    id: 'D4',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    id: 'A5',
                  ),
                  CustomSeatItem(
                    id: 'B5',
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        '5',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ))),
                  CustomSeatItem(
                    id: 'C5',
                  ),
                  CustomSeatItem(
                    id: 'D5',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your seat',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'A3, B3',
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'IDR 540.000.000',
                        style: purpleTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buttonCheckout() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: CustomButtonItem(
          title: 'Continue to Checkout',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckoutPage()));
          },
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 46),
          width: 327,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), seatStatus(), seatSelect(), buttonCheckout()],
      ),
    );
  }
}
