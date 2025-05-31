// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/products/model/model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap:
      //     () => context.goNamed(
      //       AppRoutes.productdetail.name,
      //       queryParameters: {"id": product.id.toString()},
      //     ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWrapper(
              image: product.productImage!.first.url,
              height: (MediaQuery.of(context).size.height / 1.85) * 0.35,
            ),
            // Image.network(product.productImage!.first.url,
            //     height: (MediaQuery.of(context).size.height / 1.85) * 0.35,
            //     fit: BoxFit.cover,
            //     width: double.infinity),
            SizedBox(height: 8),
            Text(
              product.name,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
            Text(
              'stock: ${product.stock}',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
            Text(
              '${product.price}/=',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
