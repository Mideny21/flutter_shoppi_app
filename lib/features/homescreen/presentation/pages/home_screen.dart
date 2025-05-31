import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/homescreen/home_screen.dart';
import 'package:shoppi/features/products/products.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductBloc>().add(const ProductEvent.loadMoreProducts());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.8);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    context.read<ProductBloc>().add(const ProductEvent.loadProducts());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return CustomScrollView(
            controller: _scrollController,
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
              if (state.allProducts.isLoading)
                const SliverToBoxAdapter(child: AppLoadingIndicator())
              else if (state.allProducts.items.isNotEmpty)
                AllHomeProductsView(products: state.allProducts.items)
              else if (state.allProducts.isLoadingMore &&
                  !state.allProducts.hasReachedMax)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
              if (state.allProducts.hasReachedMax)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'No more products to load',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                )
              else
                const SliverToBoxAdapter(child: SizedBox()),
            ],
          );
        },
      ),
    );
  }
}
