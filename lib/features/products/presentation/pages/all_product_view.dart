// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AllHomeProductsView extends StatefulWidget {
//   const AllHomeProductsView({super.key});

//   @override
//   State<AllHomeProductsView> createState() => _AllHomeProductsViewState();
// }

// class _AllHomeProductsViewState extends State<AllHomeProductsView> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     BlocProvider.of<ProductBloc>(
//       context,
//     ).add(const ProductEvent.loadProducts());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProductBloc, ProductState>(
//       builder: (context, state) {
//         if (state.status == ProductStatus.loading) {
//           return const SliverToBoxAdapter(child: AppLoadingIndicator());
//         } else if (state.products.isNotEmpty) {
//           return SliverGrid(
//             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 200.0,
//               mainAxisSpacing: 10.0,
//               // crossAxisSpacing: 3.0,
//               childAspectRatio:
//                   (MediaQuery.of(context).size.width /
//                       (MediaQuery.of(context).size.height / 1.85)),
//             ),
//             delegate: SliverChildBuilderDelegate((
//               BuildContext context,
//               int index,
//             ) {
//               final ProductModel product = state.products[index];
//               return ProductCard(product: product);
//             }, childCount: state.products.length),
//           );
//         }
//         return SliverToBoxAdapter(child: Container());
//       },
//     );
//   }
// }
