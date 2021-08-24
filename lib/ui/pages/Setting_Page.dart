import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: kRedColor, content: Text(state.error)));
          } else if (state is AuthInitial) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-up', (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return Center(child: CircularProgressIndicator());
          }

          return CustomButtonItem(
            title: 'Sign Out',
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
            width: 220,
          );
        },
      ),
    );
  }
}
