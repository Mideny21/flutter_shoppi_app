// import 'package:auto_route/annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoppi/features/products/presentation/bloc/product_bloc.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// @RoutePage()
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     BlocProvider.of<ProductBloc>(context).add(ProductEvent.loadCategories());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(AppLocalizations.of(context)!.helloWorld)),
//       body: BlocBuilder<ProductBloc, ProductState>(
//         builder: (context, state) {
//           if (state.status == ProductStatus.success) {
//             return ListView.builder(
//               itemCount: state.categories.length,
//               itemBuilder: (context, index) {
//                 return Text(state.categories[index].name);
//               },
//             );
//           } else if (state.status == ProductStatus.loading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state.error.isNotEmpty) {
//             return Center(child: Text(state.error));
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }
