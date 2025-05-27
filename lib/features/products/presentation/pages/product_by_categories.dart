// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoppi/features/products/products.dart';

// class AllProductsByCategory extends StatefulWidget {
//   final Categorymodel categoryModel;
//   const AllProductsByCategory({Key? key, required this.categoryModel})
//     : super(key: key);

//   @override
//   State<AllProductsByCategory> createState() => _AllProductsByCategoryState();
// }

// class _AllProductsByCategoryState extends State<AllProductsByCategory> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     BlocProvider.of<ProductBloc>(
//       context,
//     ).add(ProductEvent.loadProductsByCategory(widget.categoryModel.id));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(
//           onPressed:
//               () => context.pushReplacementNamed(AppRoutes.homeview.name),
//         ),
//         title: Text(widget.categoryModel.name),
//         centerTitle: true,
//       ),
//       body: BlocBuilder<ProductBloc, ProductState>(
//         builder: (context, state) {
//           if (state.status == ProductStatus.loading) {
//             return const Center(child: AppLoadingIndicator());
//           } else if (state.categoriesproducts.isNotEmpty) {
//             return GridView.builder(
//               itemCount: state.categoriesproducts.length,
//               gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 200.0,
//                 mainAxisSpacing: 10.0,
//                 crossAxisSpacing: 3.0,
//                 childAspectRatio:
//                     (MediaQuery.of(context).size.width /
//                         (MediaQuery.of(context).size.height / 1.75)),
//               ),
//               itemBuilder: (ctx, index) {
//                 final ProductModel product = state.categoriesproducts[index];
//                 return ProductCard(product: product);
//               },
//             );
//           } else if (state.categoriesproducts.isEmpty) {
//             return const Center(child: Text("No products found"));
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }
