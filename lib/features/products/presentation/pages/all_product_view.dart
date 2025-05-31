import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shoppi/core/common/widgets/widget.dart';
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
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            childAspectRatio:
                (MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.85)),
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index >= state.allProducts.items.length) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              final ProductModel product = widget.products[index];
              return ProductCard(product: product);
            },
            childCount:
                state.allProducts.hasReachedMax
                    ? state.allProducts.items.length
                    : state.allProducts.items.length + 1,
          ),
        );
      },
    );
  }
}
