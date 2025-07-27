import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/features/homescreen/homescreen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const HomeSliverAppBar(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const HomeSearchBar(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const AdvertisementPanel(),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const HomeCategoriesView(),
        ],
      ),
    );
  }
}
