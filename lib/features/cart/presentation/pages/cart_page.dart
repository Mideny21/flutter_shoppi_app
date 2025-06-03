import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/features/authentication/authentication.dart';
import 'package:shoppi/features/cart/cart.dart';
import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.watch<CartCubit>();

    void handleCheckout() async {
      final authService = getIt<AuthService>();
      final userInfo = await authService.getUserData();
      if (userInfo == null) {
        // context.goNamed(AppRoutes.auth.name);
      } else {
        // ScaffoldMessenger.of(context).showSnackBar(
        //                   SnackBar(
        //                     content: Text(state.error),
        //                   ),
        //                 );
        // context.goNamed(AppRoutes.shippingaddress.name);
      }
    }

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
                tap: handleCheckout,
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
            // context.pushReplacementNamed(AppRoutes.homeview.name);
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
