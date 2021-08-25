import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/cubit/destination_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_destination_card.dart';
import 'package:bwa_airplane/ui/widgets/custom_new_destination_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,\n${state.user.name}',
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semibold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Where to fly today?',
                            style: greyTextStyle.copyWith(
                                fontWeight: light, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/image_profile.png'))),
                    )
                  ],
                ));
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomDestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.8,
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
              ),
              CustomDestinationCard(
                name: 'White House',
                city: 'Spain',
                imageUrl: 'assets/image_destination2.png',
                rating: 4.7,
                onPressed: () {},
              ),
              CustomDestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination3.png',
                rating: 4.8,
                onPressed: () {},
              ),
              CustomDestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rating: 5.0,
                onPressed: () {},
              ),
              CustomDestinationCard(
                name: 'Payung Teduh',
                city: 'Singapura',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.8,
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Text(
                'New This Year',
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
              ),
            ),
            CustomNewDestinationCard(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.5,
            ),
            CustomNewDestinationCard(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.7,
            ),
            CustomNewDestinationCard(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.8,
            ),
            CustomNewDestinationCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/image_destination9.png',
              rating: 4.5,
            ),
            CustomNewDestinationCard(
              name: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'assets/image_destination10.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(backgroundColor: kRedColor, content: Text(state.error)));
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            children: [
              Column(
                children: [
                  header(),
                  popularDestination(),
                  newDestination(),
                  SizedBox(
                    height: 100,
                  )
                ],
              )
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
