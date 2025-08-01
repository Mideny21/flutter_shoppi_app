import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';

import 'package:shoppi/features/products/products.dart';

@RoutePage()
class AllProductsByCategoryScreen extends StatefulWidget {
  final Categorymodel categorymodel;
  const AllProductsByCategoryScreen({Key? key, required this.categorymodel})
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
        ProductEvent.loadMoreProductsByCategory(widget.categorymodel.id),
      );
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
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    BlocProvider.of<ProductBloc>(
      context,
    ).add(ProductEvent.loadProductsByCategory(widget.categorymodel.id));
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
      appBar: CustomAppBar(
        title: widget.categorymodel.name,
        leading: BackButton(onPressed: () => context.pop()),
      ),

      body: Column(
        children: [
          SizedBox(height: 12),
          Expanded(
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                log.i(
                  'ProductByCategory Current Page ${state.categoryProducts.currentPage} of ${state.categoryProducts.totalPages}',
                );

                if (state.categoryProducts.isLoading &&
                    state.categoryProducts.items.isEmpty) {
                  return const Center(child: AppLoadingIndicator());
                } else if (state.categoryProducts.items.isNotEmpty) {
                  return CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final product = state.categoryProducts.items[index];
                          return ProductCard(product: product);
                        }, childCount: state.categoryProducts.items.length),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3.4 / 4,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child:
                                state.categoryProducts.hasReachedMax
                                    ? const Text(
                                      'No more products to load',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    )
                                    : state.categoryProducts.isLoadingMore
                                    ? const CircularProgressIndicator()
                                    : const SizedBox(),
                          ),
                        ),
                      ),
                    ],
                  );
                } else if (state.categoryProducts.items.isEmpty &&
                    !state.categoryProducts.isLoading) {
                  return const Center(child: Text("No products found"));
                }

                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
