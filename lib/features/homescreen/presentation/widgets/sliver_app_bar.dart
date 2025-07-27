import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:shoppi/core/utils/utils.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
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
            Text("Discover"),
            badges.Badge(
              badgeStyle: badges.BadgeStyle(badgeColor: Palette.mainColor),
              badgeContent: Text('0', style: TextStyle(color: Colors.white)),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.shopping_cart_outlined, size: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
