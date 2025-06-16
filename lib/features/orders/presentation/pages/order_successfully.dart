// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppi/core/common/widgets/widget.dart';

import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:shoppi/features/orders/orders.dart';

class OrderSuccessfully extends StatelessWidget {
  final OrderReponse order;
  const OrderSuccessfully({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartcubit = context.read<CartCubit>();

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 10),
          content: SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(height: 170, 'assets/vectors/orderlottie.json'),
                Text(
                  "Order # ${order.id}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  "Submitted Successfully",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  tap: () => cartcubit.clearCart(),
                  text: 'Back To Home',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
