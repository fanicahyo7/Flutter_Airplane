import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 30),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_home.png'))),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(18)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_booking.png'))),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kTransparanColor,
                        borderRadius: BorderRadius.circular(18)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_card.png'))),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kTransparanColor,
                        borderRadius: BorderRadius.circular(18)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_settings.png'))),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kTransparanColor,
                        borderRadius: BorderRadius.circular(18)),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          customBottomNavigation(),
        ],
      ),
    );
  }
}
