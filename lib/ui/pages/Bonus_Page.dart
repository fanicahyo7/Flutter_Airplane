import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image_card.png')),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                            fontWeight: light, fontSize: 14),
                      ),
                      Text(
                        'Kezia Anne',
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'))),
                ),
                Text(
                  'Pay',
                  style:
                      whiteTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style:
                      whiteTextStyle.copyWith(fontWeight: light, fontSize: 14),
                ),
                Text(
                  'IDR 280.000.000',
                  style:
                      whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80, bottom: 50),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style:
                  blackTextStyle.copyWith(fontWeight: semibold, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget buttonStart() {
      return Container(
        width: 220,
        height: 55,
        // margin: EdgeInsets.only(bottom: 151),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius))),
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            child: Text(
              'Start Fly Now',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
            )),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), buttonStart()],
        ),
      ),
    );
  }
}
