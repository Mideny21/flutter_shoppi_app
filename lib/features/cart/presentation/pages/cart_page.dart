import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/features/authentication/authentication.dart';
import 'package:shoppi/features/cart/cart.dart';
import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:shoppi/features/orders/orders.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.watch<CartCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("My cart"), centerTitle: true),
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
                    cartCubit.calculateTotalPrice().toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(
                tap: () {
                  context.read<OrderBloc>().add(const OrderEvent.reset());
                  context.router.push(ShippingAddressRoute());
                },
                text:
                    'Checkout ${cartCubit.calculateTotalPrice().toStringAsFixed(2)}/=',
              ),
            ],
          ),
        ),
      ),
      body: BlocListener<CartCubit, List<CartItem>>(
        listener: (context, state) {
          if (cartCubit.state.isEmpty) {
            context.router.replace(HomeRoute());
          }
        },
        child: ListView.builder(
          itemCount: cartCubit.state.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: CartItemCard(index: index),
            );
          },
        ),
      ),
    );
  }
}
