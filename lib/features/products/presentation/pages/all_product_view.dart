import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/features/products/products.dart';

class AllHomeProductsView extends StatefulWidget {
  final List<ProductModel> products;
  const AllHomeProductsView({Key? key, required this.products})
    : super(key: key);

  @override
  State<AllHomeProductsView> createState() => _AllHomeProductsViewState();
}

class _AllHomeProductsViewState extends State<AllHomeProductsView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        log.i(
          'Current Page ${state.allProducts.currentPage} of ${state.allProducts.totalPages}',
        );
        return SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            childAspectRatio: 3.4 / 4,
          ),
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            final ProductModel product = widget.products[index];
            return ProductCard(product: product);
          }, childCount: state.allProducts.items.length),
        );
      },
    );
  }
}
