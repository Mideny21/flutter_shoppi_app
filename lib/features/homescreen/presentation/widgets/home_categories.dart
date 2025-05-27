import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/features/products/products.dart';

class HomeCategoriesView extends StatefulWidget {
  const HomeCategoriesView({super.key});

  @override
  State<HomeCategoriesView> createState() => _HomeCategoriesViewState();
}

class _HomeCategoriesViewState extends State<HomeCategoriesView> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<ProductBloc>(context).add(ProductEvent.loadCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("All Categories"),
            SizedBox(
              height: 50,
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state.status == ProductStatus.loading) {
                    return const AppLoadingIndicator(vertical: true);
                  } else if (state.categories.isNotEmpty) {
                    return ListView.builder(
                      itemCount: state.categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        final Categorymodel category = state.categories[index];
                        return InkWell(
                          onTap: () {
                            //    context.goNamed(
                            //   AppRoutes.productByCategory.name,
                            //   extra: category,
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Chip(label: Text(category.name)),
                          ),
                        );
                      },
                    );
                  }

                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
