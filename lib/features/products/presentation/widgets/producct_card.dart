// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/products/model/model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => context.router.push(
            ProductDetailRoute(id: product.id.toString()),
          ),
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
              'Tsh ${moneyFormatter.format(double.parse(product.price)).toString()}',
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
