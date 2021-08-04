import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
import 'package:bwa_airplane/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextField(title: 'Full Name', hintText: 'Your full name');
      }

      Widget emailInput() {
        return CustomTextField(
            title: 'Email Address', hintText: 'Your email address');
      }

      Widget passwordInput() {
        return CustomTextField(
          title: 'Password',
          hintText: 'Your password',
          obsecureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextField(title: 'Hobby', hintText: 'Your hobby');
      }

      Widget submitButton() {
        return CustomButtonItem(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            width: 287,
            margin: EdgeInsets.only(bottom: 30));
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), inputSection(), tacButton()],
      )),
    );
  }
}
