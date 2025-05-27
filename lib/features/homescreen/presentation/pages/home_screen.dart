import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/features/homescreen/home_screen.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const HomeCategoriesView(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          // AllHomeProductsView()
        ],
      ),
    );
  }
}
