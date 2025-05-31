// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/features/products/products.dart';

@RoutePage()
class AllProductsByCategoryScreen extends StatefulWidget {
  final Categorymodel categoryModel;
  const AllProductsByCategoryScreen({Key? key, required this.categoryModel})
    : super(key: key);

  @override
  State<AllProductsByCategoryScreen> createState() =>
      _AllProductsByCategoryScreenState();
}

class _AllProductsByCategoryScreenState
    extends State<AllProductsByCategoryScreen> {
  late ScrollController _scrollController;

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductBloc>().add(
        ProductEvent.loadMoreProductsByCategory(widget.categoryModel.id),
      );
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
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    BlocProvider.of<ProductBloc>(
      context,
    ).add(ProductEvent.loadProductsByCategory(widget.categoryModel.id));
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.pop()),
        title: Text(widget.categoryModel.name),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          log.i(
            'ProductByCategory Current Page ${state.categoryProducts.currentPage} of ${state.categoryProducts.totalPages}',
          );
          if (state.categoryProducts.isLoading &&
              state.categoryProducts.items.isEmpty) {
            return const Center(child: AppLoadingIndicator());
          } else if (state.categoryProducts.items.isNotEmpty) {
            return GridView.builder(
              controller: _scrollController,
              itemCount:
                  state.categoryProducts.hasReachedMax
                      ? state.categoryProducts.items.length +
                          1 // +1 for "no more" message
                      : state.categoryProducts.items.length +
                          1, // +1 for loading indicator
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 3.0,
                childAspectRatio:
                    (MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.75)),
              ),
              itemBuilder: (ctx, index) {
                // Show products
                if (index < state.categoryProducts.items.length) {
                  final ProductModel product =
                      state.categoryProducts.items[index];
                  return ProductCard(product: product);
                }

                // Show loading or "no more" indicator at the bottom
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state.categoryProducts.hasReachedMax)
                        const Text(
                          'No more products to load',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          textAlign: TextAlign.center,
                        )
                      else if (state.categoryProducts.isLoadingMore)
                        const CircularProgressIndicator()
                      else
                        const SizedBox(), // Empty space when not loading and not reached max
                    ],
                  ),
                );
              },
            );
          } else if (state.categoryProducts.items.isEmpty &&
              !state.categoryProducts.isLoading) {
            return const Center(child: Text("No products found"));
          }
          return Container();
        },
      ),
    );
  }
}
