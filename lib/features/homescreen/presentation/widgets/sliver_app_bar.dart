import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/cart/cart.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cartCubit = context.watch<CartCubit>();
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      expandedHeight: 50.0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO add translation
            Text("Discover"),
            badges.Badge(
              badgeStyle: badges.BadgeStyle(badgeColor: Palette.mainColor),
              badgeContent: Text(
                '${cartCubit.getTotalItemsInCart()}',
                style: TextStyle(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  cartCubit.state.isEmpty
                      ? null
                      : context.router.push(CartRoute());
                },
                child: Icon(Icons.shopping_cart_outlined, size: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
