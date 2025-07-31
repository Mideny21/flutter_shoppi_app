import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/homescreen/homescreen.dart';
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
      context.read<ProductBloc>().add(ProductEvent.loadMoreProducts());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    context.read<ProductBloc>().add(ProductEvent.loadProducts());
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
              if (state.allproducts.isLoading &&
                  state.allproducts.items.isEmpty)
                const SliverToBoxAdapter(child: AppLoadingIndicator())
              else if (state.allproducts.items.isEmpty &&
                  !state.allproducts.isLoading)
                const SliverToBoxAdapter(
                  child: Center(child: Text("No products found")),
                )
              else if (state.allproducts.items.isNotEmpty)
                AllHomeProductsView(products: state.allproducts.items)
              else if (state.allproducts.isLoadingMore &&
                  !state.allproducts.hasReachedMax)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              if (state.allproducts.hasReachedMax)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
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






    //  const HomeSliverAppBar(),
    //           const SliverToBoxAdapter(child: SizedBox(height: 10)),
    //           const HomeSearchBar(),
    //           const SliverToBoxAdapter(child: SizedBox(height: 10)),
    //           const AdvertisementPanel(),
    //           const SliverToBoxAdapter(child: SizedBox(height: 20)),
    //           const HomeCategoriesView(),
    //           const SliverToBoxAdapter(child: SizedBox(height: 10)),