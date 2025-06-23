import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/core/utils/colors.dart';
import 'package:shoppi/features/products/products.dart';
import 'package:badges/badges.dart' as badges;

@RoutePage()
class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  late ScrollController _scrollController;
  late ProductBloc _productBloc;

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductBloc>().add(ProductEvent.loadMoreSearchProducts());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _productBloc = context.read<ProductBloc>();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    _productBloc.add(ProductEvent.resetSearchState());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        //  backgroundColor: AppColors.buttonColor.withOpacity(0.8),
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                ),
                child: TextFormField(
                  onFieldSubmitted: (input) {
                    context.read<ProductBloc>().add(
                      ProductEvent.searchProducts(),
                    );
                  },

                  onChanged: (input) {
                    context.read<ProductBloc>().add(
                      ProductEvent.updateSearchKeyword(input),
                    );
                  },
                  cursorColor: Palette.Primary,
                  autofocus: true,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    isDense: true,
                    errorBorder: const UnderlineInputBorder(),
                    focusedErrorBorder: const UnderlineInputBorder(),
                    contentPadding: const EdgeInsets.all(11.0),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    labelStyle: const TextStyle(color: Colors.black54),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: IconButton(
                      iconSize: 26,

                      ///  color: AppColors.buttonColor.withOpacity(0.8),
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    suffixIcon: IconButton(
                      iconSize: 26,

                      ///  color: AppColors.buttonColor.withOpacity(0.8),
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        context.read<ProductBloc>().add(
                          ProductEvent.searchProducts(),
                        );
                      },
                    ),
                    hintStyle: TextStyle(fontSize: 16),
                    hintText: "Search...",
                  ),
                ),
              ),
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return badges.Badge(
                  showBadge: state.activeFiltersCount > 0,
                  badgeContent: Text(
                    '${state.activeFiltersCount}',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Palette.mainColor,
                    elevation: 0,
                    padding: const EdgeInsets.all(6),
                  ),
                  position: badges.BadgePosition.topEnd(top: -6, end: -6),
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                        ),
                        isScrollControlled: true,
                        builder: (_) => const FilterSheet(),
                      );
                    },
                    icon: const Icon(Icons.filter_list_rounded),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          log.i(
            'ProductBySearch Current Page ${state.searchResults.currentPage} of ${state.searchResults.totalPages}',
          );

          if (state.searchResults.isLoading &&
              state.searchResults.items.isEmpty) {
            return const Center(child: AppLoadingIndicator());
          } else if (state.searchResults.items.isNotEmpty) {
            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final product = state.searchResults.items[index];
                    return ProductCard(product: product);
                  }, childCount: state.searchResults.items.length),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 3.0,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.75)),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child:
                          state.searchResults.hasReachedMax
                              ? const Text(
                                'No more products to load',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              )
                              : state.searchResults.isLoadingMore
                              ? const CircularProgressIndicator()
                              : const SizedBox(),
                    ),
                  ),
                ),
              ],
            );
          } else if (state.searchResults.items.isEmpty &&
              !state.searchResults.isLoading &&
              state.hasSearched) {
            return const Center(child: Text("No products found"));
          }

          return Container();
        },
      ),
    );
  }
}
