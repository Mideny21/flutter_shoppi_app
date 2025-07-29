import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
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
                  if (state.categoryStatus == CategoryStatus.loading) {
                    return AppLoadingIndicator(vertical: true);
                  } else if (state.categories.isNotEmpty) {
                    return Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children:
                          state.categories.map((category) {
                            return InkWell(
                              onTap: () {
                                context.router.push(
                                  AllProductsByCategoryRoute(
                                    categorymodel: category,
                                  ),
                                );
                              },
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  double itemWidth =
                                      MediaQuery.of(context).size.width / 3 -
                                      12;

                                  return SizedBox(
                                    width: itemWidth,
                                    child: Chip(
                                      label: Center(
                                        child: Text(
                                          category.name,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }).toList(),
                    );
                  } else if (state.error != '') {
                    return Text(state.error);
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
