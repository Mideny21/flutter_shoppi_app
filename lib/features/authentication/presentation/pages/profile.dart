import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/authentication/presentation/cubit/auth_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: CustomButton(
          text: 'logout',
          backgroundColor: Colors.red,
          color: Colors.white,
          tap: () {
            BlocProvider.of<AuthCubit>(context).logout();
          },
        ),
      ),
    );
  }
}
