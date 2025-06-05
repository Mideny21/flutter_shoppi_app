// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class OrderSuccessfullyScreen extends StatelessWidget {
  final OrderReponse order;
  const OrderSuccessfullyScreen({Key? key, required this.order})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(height: 240, 'assets/vectors/orderlottie.json'),
            Text(
              "Order # ${order.id}",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Palette.mainColor,
              ),
            ),
            const Text(
              "Submitted Successfully",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Palette.mainColor,
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              tap: () => context.router.replace(const HomeRoute()),
              text: 'Back To Home',
            ),
          ],
        ),
      ),
    );
  }
}
