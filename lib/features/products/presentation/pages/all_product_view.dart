import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shoppi/features/products/products.dart';

class AllHomeProductsView extends StatelessWidget {
  final List<ProductModel> products;
  const AllHomeProductsView({Key? key, required this.products})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            final ProductModel product = products[index];
            return ProductCard(product: product);
          }, childCount: state.allproducts.items.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.4 / 4,
          ),
        );
      },
    );
  }
}
