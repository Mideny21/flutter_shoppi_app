import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/cart/cart.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.watch<CartCubit>();
    return Scaffold(
      appBar: CustomAppBar(title: 'My cart', showBackButton: true),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        height: 110,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$ ${moneyFormatter.format(cartCubit.calculateTotalPrice())}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              CustomNeumorphicButton(
                text: 'Checkout',
                onTap: () {
                  context.router.push(ShippingAddressRoute());
                },
              ),
            ],
          ),
        ),
      ),
      body: BlocListener<CartCubit, List<CartItem>>(
        listener: (context, state) {
          // TODO: implement listener
          if (cartCubit.state.isEmpty) {
            context.router.pop();
          }
        },
        child: ListView.builder(
          itemCount: cartCubit.state.length,
          padding: const EdgeInsets.only(bottom: 120),
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: CartItemCard(index: index),
            );
          },
        ),
      ),
    );
  }
}
