// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/cart/cart.dart';
import 'package:shoppi/features/cart/presentation/cubit/cart_cubit.dart';

class CartItemCard extends StatelessWidget {
  final int index;
  const CartItemCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartcubit = context.watch<CartCubit>();
    final item = cartcubit.state[index];

    return Container(
      height: 105,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.35,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: item.image,
              height: 100,
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.name),
                    InkWell(
                      onTap: () {
                        cartcubit.removeItem(index);
                      },
                      child: const Icon(
                        Icons.delete_outline_outlined,
                        size: 25,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.18,
                      child: Text(moneyFormatter.format(item.price).toString()),
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
                    QuantitButton(
                      tap: () {
                        if (item.quantity > 1) {
                          cartcubit.updateQuantity(
                            index,
                            item.quantity - 1,
                            item,
                          );
                        } else {
                          cartcubit.removeItem(index);
                        }
                      },
                      symbol: '-',
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
                    Text(item.quantity.toString()),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
                    QuantitButton(
                      tap: () {
                        cartcubit.updateQuantity(
                          index,
                          item.quantity + 1,
                          item,
                        );
                      },
                      symbol: '+',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
