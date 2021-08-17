import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/pages/Home_Page.dart';
import 'package:bwa_airplane/ui/pages/Setting_Page.dart';
import 'package:bwa_airplane/ui/pages/Transaction_Page.dart';
import 'package:bwa_airplane/ui/pages/Wallet_Page.dart';
import 'package:bwa_airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                index: 0,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
                index: 1,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
                index: 2,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget page(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();

        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              page(context.read<PageCubit>().state),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
